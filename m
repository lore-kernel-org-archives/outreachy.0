X-GM-THRID: 9979778039808
X-Received: by 10.50.110.42 with SMTP id hx10mr31682295igb.8.1427396816766;
        Thu, 26 Mar 2015 12:06:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.205 with SMTP id e74ls733126ioi.8.gmail; Thu, 26 Mar
 2015 12:06:56 -0700 (PDT)
X-Received: by 10.66.216.66 with SMTP id oo2mr4306475pac.9.1427396816316;
        Thu, 26 Mar 2015 12:06:56 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id z4si802449qcf.0.2015.03.26.12.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id a8so106040237qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=Ln33unQFgGG8o75MuHocyzXdprtBUiMWQiIMnciqvIk=;
        b=qUPWHSZSc2puirUzuQVfJse6ePAVZpFcC75u3acPsNCQuG7Go6dbKC5SeuhvSHjzJX
         x6cLjfaoWeWa4BIeinxxZL88EXFxaQE8VPlnjDchzBHKhOgiQOs4BP563knx5XhRvofw
         bJqP29o8UyE74MqVs+wCLSY5/VkLTrXyz58dO4jQKhic0sTF76L+Wljs5KX6oiE0TLl6
         xVBjPSI09typdgrX7vU2J8/s7X4hIh/3KYojWHNI0aKP3f9GjDJfIIE+QfJKzR+SrabA
         ldgzGsToxf061sJ3cV/bvADjs2/7QML2BhhXfO6IZJ2j3ny0HIzyByassofgrY6c4SHK
         rCVQ==
X-Received: by 10.140.96.165 with SMTP id k34mr19170708qge.79.1427396786193;
        Thu, 26 Mar 2015 12:06:26 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id o186sm3992283qhb.10.2015.03.26.12.06.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:06:25 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <551458B0.9040403@gmail.com>
Date: Thu, 26 Mar 2015 15:06:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192u: Make function
 static
References: <20150326131326.GA9213@akanksha>
In-Reply-To: <20150326131326.GA9213@akanksha>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/26/15 09:13, Vatika Harlalka wrote:
> This function is used in only one c file and so
> its definition is removed from the header file
> and it is declared as static.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U.h      | 1 -
>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
>  2 files changed, 2 insertions(+), 3 deletions(-)

Hi,

Patches look OK, but you have to use a cover letter when you send
multi-commit patch sets.

Jes


> diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> index 6c2e438..221dbd7 100644
> --- a/drivers/staging/rtl8192u/r8192U.h
> +++ b/drivers/staging/rtl8192u/r8192U.h
> @@ -1153,7 +1153,6 @@ typedef enum {
>  
>  bool init_firmware(struct net_device *dev);
>  short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb);
> -short rtl8192_tx(struct net_device *dev, struct sk_buff *skb);
>  
>  u32 read_cam(struct net_device *dev, u8 addr);
>  void write_cam(struct net_device *dev, u8 addr, u32 data);
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index cbcdcf2..7e3671c 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -942,7 +942,7 @@ static void rtl8192_data_hard_resume(struct net_device *dev)
>  {
>  	// FIXME !!
>  }
> -
> +static short rtl8192_tx(struct net_device *dev, struct sk_buff *skb);
>  /* this function TX data frames when the ieee80211 stack requires this.
>   * It checks also if we need to stop the ieee tx queue, eventually do it
>   */
> @@ -1487,7 +1487,7 @@ static void tx_zero_isr(struct urb *tx_urb)
>   * skb->cb will contain all the following information,
>   * priority, morefrag, rate, &dev.
>   * */
> -short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
> +static short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  	cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
> 


