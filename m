X-GM-THRID: 6253638659400007680
X-Received: by 10.28.128.204 with SMTP id b195mr570440wmd.7.1457217559945;
        Sat, 05 Mar 2016 14:39:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.204 with SMTP id s195ls193228lfe.64.gmail; Sat, 05 Mar
 2016 14:39:19 -0800 (PST)
X-Received: by 10.25.153.196 with SMTP id b187mr1871423lfe.3.1457217559021;
        Sat, 05 Mar 2016 14:39:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 185si162700wml.0.2016.03.05.14.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 14:39:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 915A7DBE;
	Sat,  5 Mar 2016 22:39:17 +0000 (UTC)
Date: Sat, 5 Mar 2016 14:39:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: rtl871x_mp_ioctl:
 Remove exceptional & on function name
Message-ID: <20160305223917.GA12673@kroah.com>
References: <20160221071149.GA21503@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160221071149.GA21503@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 21, 2016 at 12:41:49PM +0530, Amitoj Kaur Chawla wrote:
> In this files, function names are otherwise used as pointers without &.
> 
> The Coccinelle semantic patch that is used to make this change is as
> follows:
> 
> // <smpl>
> @r@
> identifier f;
> @@
> f(...) { ... }
> @@
> identifier r.f;
> @@
> - &f
> + f
> @m@
> type T;
> identifier f;
> @@
> T f(...);
> @@
> identifier m.f;
> @@
> - &f
> + f
> // </smpl>
> 
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mp_ioctl.h | 118 ++++++++++++++---------------
>  1 file changed, 59 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
> index 8e7c7f8..2401dbd 100644
> --- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
> +++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
> @@ -150,90 +150,90 @@ uint oid_rt_get_power_mode_hdl(
>  #ifdef _RTL871X_MP_IOCTL_C_ /* CAUTION!!! */
>  /* This ifdef _MUST_ be left in!! */
>  static const struct oid_obj_priv oid_rtl_seg_81_80_00[] = {
> -	{1, &oid_null_function},	/*0x00	OID_RT_PRO_RESET_DUT */
> -	{1, &oid_rt_pro_set_data_rate_hdl},	/*0x01*/
> -	{1, &oid_rt_pro_start_test_hdl},/*0x02*/
> -	{1, &oid_rt_pro_stop_test_hdl},	/*0x03*/
> -	{1, &oid_null_function},	/*0x04	OID_RT_PRO_SET_PREAMBLE*/
> -	{1, &oid_null_function},	/*0x05	OID_RT_PRO_SET_SCRAMBLER*/
> -	{1, &oid_null_function},	/*0x06	OID_RT_PRO_SET_FILTER_BB*/
> -	{1, &oid_null_function},	/*0x07
 +	{1, oid_null_function},	/*0x00	OID_RT_PRO_RESET_DUT */
> +	{1, oid_rt_pro_set_data_rate_hdl},	/*0x01*/
> +	{1, oid_rt_pro_start_test_hdl},/*0x02*/
> +	{1, oid_rt_pro_stop_test_hdl},	/*0x03*/
> +	{1, oid_null_function},	/*0x04	OID_RT_PRO_SET_PREAMBLE*/
> +	{1, oid_null_function},	/*0x05	OID_RT_PRO_SET_SCRAMBLER*/
> +	{1, oid_null_function},	/*0x06	OID_RT_PRO_SET_FILTER_BB*/
> +	{1, oid_null_function},	/*0x07

Comments are no longer in line, making this all messy, please fix up.


