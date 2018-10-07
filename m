X-GM-THRID: 6609326471053836288
X-Received: by 2002:ac8:3cc:: with SMTP id z12-v6mr14889643qtg.0.1538919820450;
        Sun, 07 Oct 2018 06:43:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:36ca:: with SMTP id f68-v6ls3698933qtb.6.gmail; Sun, 07
 Oct 2018 06:43:40 -0700 (PDT)
X-Received: by 2002:aed:3d84:: with SMTP id i4-v6mr8550814qtf.28.1538919820042;
        Sun, 07 Oct 2018 06:43:40 -0700 (PDT)
Received: by 2002:a37:c519:0:0:0:0:0 with SMTP id p25-v6msqki;
        Sun, 7 Oct 2018 05:57:48 -0700 (PDT)
X-Google-Smtp-Source: ACcGV631hmL7zlYa233c/KcTqMgex8EC/C7uuvdhiOF0REOCXqcfx2VUQXYFHrYKltlOlccG4iSR
X-Received: by 2002:a19:98ce:: with SMTP id a197-v6mr405832lfe.19.1538917067508;
        Sun, 07 Oct 2018 05:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538917067; cv=none;
        d=google.com; s=arc-20160816;
        b=VABer/XJi4L+rxpyyjI7A9ssM8tNpL6kfxzLSWmF6nLbbQ7ITtZIOewDdnZvqWwchz
         VqZEeEgtVVHayCDeQI2Qqiy7pGq0ZRe8FAOUeYp7Ez2ZcGuXjS8fdduBSv6MaK1YLozM
         CGFwhh+G72Ec/jPvItPP9AZtdj3twewUVUo079NlZ3opOMxQ8vPkK2EH+5CVJ/rQY2Mp
         FGQY6E305ZeUITw26JrISi69Nx4QO1XRsForD1zcxLDpeoDlf/XESDSuYv2w/0HhipcY
         euGCJHf+U/qPegJg1V6T52ZE9kP5E2GGnOXdkrgf6HxDAsbmsPhZEgfJLwjdBDq+cost
         ql8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject;
        bh=X2G8ugL5CKQ8AT4ahxa6hsArwUDoUPXQrVIRBnoqzms=;
        b=UgrdMz8PwyfwajPsN+83QYsLnRahpCvVG6o4TPrnPIu48a4OoNf6Axbeyjuv6FIqet
         Xdegp3V709R/FUOBog6suR++OZg+DCGRjYoU8rfKmfNIU/LzHoP2JLlDR5SFMOXcbFdF
         DxvTg1GcqCBQTVblgy2zUrm5az32j+t7Qmjp6ecIqdQoTGRSxAWrldkIboIh8HlX5QSp
         tI/hjBObNjw6xRMIChba2dAAbd1fk+nP/A/73UpccHEfomjbVZfre7wTqraarXJqc8fi
         yMhCbkpLUYHgTB5xhCtGXAipg1JYaTVhukQ7ca0gZth7goDg6DNM6qEPnZ2nEW6wIGhg
         8ubQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <helen.koike@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id f192-v6si442641lff.4.2018.10.07.05.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 07 Oct 2018 05:57:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: koike)
	with ESMTPSA id 80AC42639AD
Subject: Re: [PATCH vicodec] media: pvrusb2: replace `printk` with `pr_*`
To: Dafna Hirschfeld <dafna3@gmail.com>, isely@pobox.com, mchehab@kernel.org,
 hverkuil@xs4all.nl
Cc: outreachy-kernel@googlegroups.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20181006192138.11349-1-dafna3@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Openpgp: preference=signencrypt
Autocrypt: addr=helen.koike@collabora.com; keydata=
 xsFNBFmOMD4BEADb2nC8Oeyvklh+ataw2u/3mrl+hIHL4WSWtii4VxCapl9+zILuxFDrxw1p
 XgF3cfx7g9taWBrmLE9VEPwJA6MxaVnQuDL3GXxTxO/gqnOFgT3jT+skAt6qMvoWnhgurMGH
 wRaA3dO4cFrDlLsZIdDywTYcy7V2bou81ItR5Ed6c5UVX7uTTzeiD/tUi8oIf0XN4takyFuV
 Rf09nOhi24bn9fFN5xWHJooFaFf/k2Y+5UTkofANUp8nn4jhBUrIr6glOtmE0VT4pZMMLT63
 hyRB+/s7b1zkOofUGW5LxUg+wqJXZcOAvjocqSq3VVHcgyxdm+Nv0g9Hdqo8bQHC2KBK86VK
 vB+R7tfv7NxVhG1sTW3CQ4gZb0ZugIWS32Mnr+V+0pxci7QpV3jrtVp5W2GA5HlXkOyC6C7H
 Ao7YhogtvFehnlUdG8NrkC3HhCTF8+nb08yGMVI4mMZ9v/KoIXKC6vT0Ykz434ed9Oc9pDow
 VUqaKi3ey96QczfE4NI029bmtCY4b5fucaB/aVqWYRH98Jh8oIQVwbt+pY7cL5PxS7dQ/Zuz
 6yheqDsUGLev1O3E4R8RZ8jPcfCermL0txvoXXIA56t4ZjuHVcWEe2ERhLHFGq5Zw7KC6u12
 kJoiZ6WDBYo4Dp+Gd7a81/WsA33Po0j3tk/8BWoiJCrjXzhtRwARAQABzR5IZWxlbiBLb2lr
 ZSA8aGVsZW5Aa29pa2Vjby5kZT7CwZcEEwEKAEECGwEFCQLEsxQFCwkIBwMFFQoJCAsFFgID
 AQACHgECF4AWIQSofQA6zrItXEgHWTzAfqwo9yFiXQUCWw2ZAAIZAQAKCRDAfqwo9yFiXajh
 D/9npW1VeySvAQmnmN4syxEbn+EaHOwFTJKSw6vXx9AX/GToCP+5ULeBjHwR/6e5PAwKcDoB
 DSFmV2WWpKvHQqC8AEJX6Aq0lXH4Ub5k8F31UIO+0hyTNc/qnL9LSevVhTK/ugtyPoiyJm+y
 HVkLxlQCZzMZdr7yNHSHXSOGw5NJzL0f0Ttrc9RPSyMYoZKt8Bm/T/Btql1x34T+PjNUwBiH
 saCotMPft6fZyG3pW9hNrNHKU+5lH3vIf8REsCEec/IG7hXW41ETlqZrZB++IlXhUvy7mqwS
 KuT/E72s5aIxEs6YjEDJTqFbOAt3CGMI6GOE8xU0oQSL9wLMW9aG6916oUMMvcx3DD9EhhTN
 G1cRqNJd2Tsnde+nQJvc5GnBZ+7FK/0xRkF8fYCdhdZYuaxk47+KteTAmR/yrxs/9dQ2VI5g
 SMGJb1ZD4C8P9XhRiNCGvBg68JtmjvkUCDh1nTnZj1PB7CiT6N3fTFl83WAohLDdG9n7wM3f
 5k4zBLmWQlBbPdlIzr01SV9dSGC+yhPNZop2hXcNZyPxLJIxpTATtIqHgpIRyA2GkzRJYpGQ
 AhafHBfvhHrHLVaTqTWaDcZyt9e736RjkK8QYnv1hEa7br9OQglGbBbQATr5t7sHv9+gY/sr
 njBiD7iJanr6gtNu3riKXsvJbvlRO0J6gRtJc87BTQRZjjDJARAAxWnRTfwt7t3zQy7oBP7V
 0x6zzuIqffRN0y4u9KDa5ionVPauJEEXvNTq7vgcXrOmzSs9C+IFc6ChK4prWGdLo7AVv3HJ
 A+WTvotj3pJQHmM9Ynd87vxkZLCRVskW4b2CkP/jWfxSefWFeANvaBRrEPShe//vbcSZNgK9
 KjfPpjwDZoFA2v4/KFAA8NrO9VD4/u+dlirWgrTD4PtoiLH8GniajhVuAB4B4zFdZJmzw3k1
 C1d5MGAHsOqt8k/nBbCAKxE5952zoSh11xiCqEbTNVT0TngLwlw84DTApWz736C3Z7JE23HR
 SEVtqHupe4kaFbL/QIte9WgKhL7uqlbPTvRMECU9muD0PSjaA7DTW2tCCgoBgEoqAmHFpf/i
 DOL7kJybfctgf2UBVN3N2it6O5XXFZ2yc3Jzw4A96hcF/1EghZ9BWZuFVcGnYMA+NXr+QgkS
 aXsw0l8S+qNX3MqxYX0AWWyoNZkMLJR2pH3pqFNIPfilHBvpr0f338auN6jAppov3kMhVlML
 pJO8M0vqSnKziw57YAyZAa/YwxwkHdpgvMfx/WwRD1LRQxfv/oKJ8Qbomh0bpj9b+UujVW8P
 F4MD67guCrqrGWSynwzvwWNybEVWV/hykKLa5xtnG6uGUGSO1lnwxUAR17eGWqNwGXYCHpAP
 zboVPGxw4aUcR80AEQEAAcLBfAQYAQoAJhYhBKh9ADrOsi1cSAdZPMB+rCj3IWJdBQJZjjDJ
 AhsMBQkCxLJmAAoJEMB+rCj3IWJdY34QAMVy70677f9vXJsYVndP1xmnMYqnI5CEViQ3GP9W
 k8I2q8nUN3NHyjWe5Ro/UKlj03REymVdtSq7xBRAINQmfgVELvOBEJY6cO8JAujPl4EiJ0kL
 Y7D0+WfRrMvs/pR9jG7h3e3oG080ezRIkh9amGi1rj/uG39vpBc5avNpvOqqdwyCIyAQuG/Z
 00CcD92WMQH3LmZkHJ0A5amZmVp/2NhWFIXnzMGCG+pnenYkYTs+nPwpEeF9aURlT3RQ6MEX
 te5bno0pQAZmJGlfxzPeId4BXGIlyCBGa8AYVcAH4byD/Lj1CWMuF/n+PQOloCMTUQsWuHJG
 WAFfICCspjVwzVDZMr3W3dKesrufYdXM0yVlXc39Zvx2sI94tMPaaFGvk758TQohg28OlPFD
 AxxgkCTrLa8OeJxNJFAz4cmmCWiZbm3SSYLzVFkNozQujL8c3y2U5yM3Tq7RmU9Djxh4s10p
 OoTFbIyky1af/kDLOBTNMXSNJ95+CDyH4g6rHhYJcjUribIgChGr7eLiSdQCpoyjcOe6n7ua
 NDLkOLQPocgjJb/AE46aMq67SVffqOTtLZZNPrSKnw/RVt7kbpRrcz5a45oX1x2kwYBBa//G
 cNC+diAifR6fnbn0lFc5oop99E0SCa0F4V/PYh6myRcqYH8huntTFLvBSYnG/tBYAeu1
Message-ID: <38206d73-978d-4ee3-0ba8-d6971578ac94@collabora.com>
Date: Sun, 7 Oct 2018 09:57:42 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <20181006192138.11349-1-dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Dafna,

Thanks for you patch.

On 10/6/18 4:21 PM, Dafna Hirschfeld wrote:
> Replace calls to `printk` with the appropriate `pr_*`
> macro.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 ++++----
>  drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 14 ++++++--------
>  drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 ++--
>  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 ++--

Could you also update drivers/media/usb/pvrusb2/pvrusb2-debug.h please?
So we can get rid of all the printk in this driver.

>  4 files changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> index a8519da0020b..7702285c1519 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> @@ -3293,12 +3293,12 @@ void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
>  	int nr = pvr2_hdw_get_unit_number(hdw);
>  	LOCK_TAKE(hdw->big_lock);
>  	do {
> -		printk(KERN_INFO "pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
> +		pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
>  		v4l2_device_call_all(&hdw->v4l2_dev, 0, core, log_status);
>  		pvr2_trace(PVR2_TRACE_INFO,"cx2341x config:");
>  		cx2341x_log_status(&hdw->enc_ctl_state, "pvrusb2");
>  		pvr2_hdw_state_log_state(hdw);
> -		printk(KERN_INFO "pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
> +		pr_info("pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
>  	} while (0);
>  	LOCK_GIVE(hdw->big_lock);
>  }
> @@ -4851,7 +4851,7 @@ static void pvr2_hdw_state_log_state(struct pvr2_hdw *hdw)
>  	for (idx = 0; ; idx++) {
>  		ccnt = pvr2_hdw_report_unlocked(hdw,idx,buf,sizeof(buf));
>  		if (!ccnt) break;
> -		printk(KERN_INFO "%s %.*s\n",hdw->name,ccnt,buf);
> +		pr_info("%s %.*s\n", hdw->name, ccnt, buf);
>  	}
>  	ccnt = pvr2_hdw_report_clients(hdw, buf, sizeof(buf));
>  	if (ccnt >= sizeof(buf))
> @@ -4863,7 +4863,7 @@ static void pvr2_hdw_state_log_state(struct pvr2_hdw *hdw)
>  		while ((lcnt + ucnt < ccnt) && (buf[lcnt + ucnt] != '\n')) {
>  			lcnt++;
>  		}
> -		printk(KERN_INFO "%s %.*s\n", hdw->name, lcnt, buf + ucnt);
> +		pr_info("%s %.*s\n", hdw->name, lcnt, buf + ucnt);
>  		ucnt += lcnt + 1;
>  	}
>  }> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
> index ec7d32759e39..06c7e875fa0f 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
> @@ -478,8 +478,7 @@ static int pvr2_i2c_xfer(struct i2c_adapter *i2c_adap,
>  		unsigned int idx,offs,cnt;
>  		for (idx = 0; idx < num; idx++) {
>  			cnt = msgs[idx].len;
> -			printk(KERN_INFO
> -			       "pvrusb2 i2c xfer %u/%u: addr=0x%x len=%d %s",
> +			pr_info("pvrusb2 i2c xfer %u/%u: addr=0x%x len=%d %s",
>  			       idx+1,num,
>  			       msgs[idx].addr,
>  			       cnt,
> @@ -501,8 +500,7 @@ static int pvr2_i2c_xfer(struct i2c_adapter *i2c_adap,
>  			printk(KERN_CONT "\n");
>  		}
>  		if (!num) {
> -			printk(KERN_INFO
> -			       "pvrusb2 i2c xfer null transfer result=%d\n",
> +			pr_info("pvrusb2 i2c xfer null transfer result=%d\n",
>  			       ret);
>  		}
>  	}
> @@ -542,14 +540,14 @@ static int do_i2c_probe(struct pvr2_hdw *hdw, int addr)
>  static void do_i2c_scan(struct pvr2_hdw *hdw)
>  {
>  	int i;
> -	printk(KERN_INFO "%s: i2c scan beginning\n", hdw->name);
> +	pr_info("%s: i2c scan beginning\n", hdw->name);
>  	for (i = 0; i < 128; i++) {
>  		if (do_i2c_probe(hdw, i)) {
> -			printk(KERN_INFO "%s: i2c scan: found device @ 0x%x\n",
> +			pr_info("%s: i2c scan: found device @ 0x%x\n",
>  			       hdw->name, i);
>  		}
>  	}
> -	printk(KERN_INFO "%s: i2c scan done.\n", hdw->name);
> +	pr_info("%s: i2c scan done.\n", hdw->name);
>  }
>  
>  static void pvr2_i2c_register_ir(struct pvr2_hdw *hdw)
> @@ -612,7 +610,7 @@ void pvr2_i2c_core_init(struct pvr2_hdw *hdw)
>  
>  	/* However, deal with various special cases for 24xxx hardware. */
>  	if (ir_mode[hdw->unit_number] == 0) {
> -		printk(KERN_INFO "%s: IR disabled\n",hdw->name);
> +		pr_info("%s: IR disabled\n", hdw->name);
>  		hdw->i2c_func[0x18] = i2c_black_hole;
>  	} else if (ir_mode[hdw->unit_number] == 1) {
>  		if (hdw->ir_scheme_active == PVR2_IR_SCHEME_24XXX) {

This file has some printk(KERN_CONT, I believe you can also change it to
pr_cont.

> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-main.c b/drivers/media/usb/pvrusb2/pvrusb2-main.c
> index cbe2c3a22458..23672dd352f5 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-main.c
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-main.c
> @@ -132,10 +132,10 @@ static int __init pvr_init(void)
>  	ret = usb_register(&pvr_driver);
>  
>  	if (ret == 0)
> -		printk(KERN_INFO "pvrusb2: " DRIVER_VERSION ":"
> +		pr_info("pvrusb2: " DRIVER_VERSION ":"
>  		       DRIVER_DESC "\n");
>  	if (pvrusb2_debug)
> -		printk(KERN_INFO "pvrusb2: Debug mask is %d (0x%x)\n",
> +		pr_info("pvrusb2: Debug mask is %d (0x%x)\n",
>  		       pvrusb2_debug,pvrusb2_debug);
>  
>  	pvr2_trace(PVR2_TRACE_INIT,"pvr_init complete");
> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
> index cea232a3302d..97a93ed4bcda 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
> @@ -869,7 +869,7 @@ static void pvr2_v4l2_dev_destroy(struct pvr2_v4l2_dev *dip)
>  	   are gone. */
>  	video_unregister_device(&dip->devbase);
>  
> -	printk(KERN_INFO "%s\n", msg);
> +	pr_info("%s\n", msg);
>  
>  }
>  
> @@ -1260,7 +1260,7 @@ static void pvr2_v4l2_dev_init(struct pvr2_v4l2_dev *dip,
>  			": Failed to register pvrusb2 v4l device\n");
>  	}
>  
> -	printk(KERN_INFO "pvrusb2: registered device %s [%s]\n",
> +	pr_info("pvrusb2: registered device %s [%s]\n",
>  	       video_device_node_name(&dip->devbase),
>  	       pvr2_config_get_name(dip->config));
>  
> 


Thanks
Helen

