<?php
namespace App;
use Session;
class  Cart
{
    public static function add_cart($product_id,$color_id,$service_id)
    {
        $cart=Session::get('cart');
        $cart=empty($cart) ? array() : $cart;
        $s_c=$service_id.'_'.$color_id;
        if(array_key_exists($product_id,$cart))
        {
            $product_data=$cart[$product_id]['product_data'];

            if(array_key_exists($s_c,$product_data))
            {
                $cart[$product_id]['product_data'][$s_c]++;

            }
            else
            {
                $cart[$product_id]['product_data'][$s_c]=1;
            }

        }
        else
        {
            $cart[$product_id]=[
                'product_data'=>[$s_c=>1]
            ];
        }
        Session::put('cart',$cart);
    }
    public static function get()
    {
        $cart=Session::get('cart',array());
        ksort($cart);
        return $cart;
    }
    public static function get_date($product_id,$service_id,$color_id)
    {
        $array=array();
        $product=Product::find($product_id);
        if($product)
        {
            $array['title']=$product->title;
            $array['code']=$product->code;
            $array['title_url']=$product->title_url;
            $array['code_url']=$product->code_url;
            $service=Service::find($service_id);
            $service_data=Service::where(['parent_id'=>$service_id,'color_id'=>$color_id,'product_id'=>$product_id])->first();
            if($service)
            {
                $array['service_name']=$service->service_name;
            }
            else
            {
                $array['service_name']='';
            }

            $color=Color::find($color_id);
            if($color)
            {
                $array['color_name']=$color->color_name;
                $array['color_code']=$color->color_code;
            }
            else
            {
                $array['color_name']='';
                $array['color_code']='';
            }
            $img=$product->get_img;
            if($img)
            {
                $array['img']=url('upload').'/'.$img->url;
            }
            else
            {
                $array['img']='';
            }
            if($service_data)
            {
                $array['price1']=$service_data->price;
                $array['price2']=$service_data->price-$product->discounts;
            }
            else
            {
                $array['price1']=$product->price;
                $array['price2']=$product->price-$product->discounts;
            }

            return $array;
        }
        else
        {
            return false;
        }
    }
    public static function remove($product_id,$service_id,$color_id)
    {
        $cart=Session::get('cart',array());
        $s_c=$service_id.'_'.$color_id;
        if(array_key_exists($product_id,$cart))
        {
            $order=$cart[$product_id]['product_data'];
            if(array_key_exists($s_c,$order))
            {
               unset($cart[$product_id]['product_data'][$s_c]);
            }
            if(empty($cart[$product_id]['product_data']))
            {
                unset($cart[$product_id]);
            }
        }
        if(empty($cart))
        {
            Session::forget('cart');
        }
        else
        {
           Session::put('cart',$cart);
        }
    }
    public static function change($product_id,$service_id,$color_id,$number)
    {
        $cart=Session::get('cart',array());
        $s_c=$service_id.'_'.$color_id;
        if(array_key_exists($product_id,$cart))
        {

            $order=$cart[$product_id]['product_data'];
            if(array_key_exists($s_c,$order))
            {
                settype($number,'integer');
               if(is_int($number) && $number>0)
               {
                   $cart[$product_id]['product_data'][$s_c]=$number;
               }
            }
        }
        Session::put('cart',$cart);
    }
    public static function count()
    {
        $cart=Session::get('cart',array());
        if(!empty($cart))
        {
            $i=0;
            foreach ($cart as $key=>$value)
            {
                $d=$cart[$key]['product_data'];
                foreach ($d as $key2=>$value2)
                {
                    $i++;
                }

            }
            return $i;
        }
        else
        {
            return 0;
        }
    }
    public static function has()
    {
        $cart=Session::get('cart',array());
        if(sizeof($cart)==0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

}