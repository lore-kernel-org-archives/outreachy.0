X-GM-THRID: 150692954112
X-Received: by 10.180.101.101 with SMTP id ff5mr3533064wib.5.1424192237705;
        Tue, 17 Feb 2015 08:57:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls322254lad.53.gmail; Tue, 17 Feb
 2015 08:57:17 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr3688555lbb.10.1424192237212;
        Tue, 17 Feb 2015 08:57:17 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id cl5si8602676wib.3.2015.02.17.08.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 08:57:17 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MDTuj-1YMLsP2QvN-00Go5I; Tue, 17 Feb
 2015 17:57:16 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Replace printk and dprintk with dev_dbg()
Date: Tue, 17 Feb 2015 17:57:16 +0100
Message-ID: <8090827.3g44JY8XAs@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424191221-25574-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424191221-25574-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:ryfFCYt59SWgFIdKENsv3Pl85OfgH90z5fnAqT/dojC9buS+2me
 aeFw+IKhwYPW/S23e9Nzf4AJDT0piac3rbbzXO+59tgqQJT+LvJBDUHzz6LxxBJNpbyO9Mz
 WRsyZMrJInVknW3p9cp6iZWiojT+42knNZNAi9EfBMLrc/BVE41fkA5VOWYcnxv40PwBrpu
 Ri27sXT1pLFoylyWOGllQ==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 17:40:21 Ksenija Stanojevic wrote:
> Making variants of existing macros is against kernel coding style. This
> patch removes all definitions made by macro dprintk() and replaces them
> with dev_dbg()
> ---

Nice!

Now you forgot the "Signed-off-by", which you need to add when sending it
again. A few more things:

> @@ -230,9 +222,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
>  
>         decoder->norm = norm;
>  
> -       dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
> +       dev_dbg("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
>                 stdc, chcv);
> -       dprintk("norm: %llx\n", norm);
> +       dev_dbg("norm: %llx\n", norm);
>  
>         return 0;
>  }
It also seems that each function has a pointer to a 'v4l2_subdev' structure,
so it's better to use dev_dbg() than pr_debug() here, and pass
sd->dev as the first argument.


> @@ -116,7 +108,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
>  
>         ret = i2c_master_recv(client, value, 1);
>         if (ret < 0) {
> -               printk(KERN_ERR "SAA7191: saa7191_read_status(): read failed\n");
> +               dev_dbg(KERN_ERR "SAA7191: saa7191_read_status(): read failed\n");
>                 return ret;
>         }
>  

Here the original function was using printk(), not dprintk(), which means
two things:

- you have to drop the KERN_ERR argument, as that is implied by the changed
  functions.
- KERN_ERR corresponds to pr_error() or dev_error(), not pr_debug()/dev_dbg()
- when using dev_error, also drop the "SAA7191: " prefix that is already
  getting printed as part of the device string.

	Arnd

