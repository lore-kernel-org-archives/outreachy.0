X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr1116536lbb.20.1424423730143;
        Fri, 20 Feb 2015 01:15:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.171 with SMTP id kr11ls237275lac.36.gmail; Fri, 20 Feb
 2015 01:15:29 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr1093460lbb.17.1424423729563;
        Fri, 20 Feb 2015 01:15:29 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ew5si65440wid.1.2015.02.20.01.15.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:15:29 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LqU6b-1Xu3cn1viD-00e5eX; Fri, 20 Feb
 2015 10:15:28 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: media: vino: Replace printk() and dprintk() with dev_dbg()
Date: Fri, 20 Feb 2015 10:15:28 +0100
Message-ID: <6147170.92TzAG2Bsj@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:CpcvDISsX/aqtLqg0/KH0/IoJHTnt5YMYE1CNXW6px9qDS9pnnU
 ghU6udFiNhH6PEyVmpbBd3XTfXdEevmT7FmDPqwYJ4rhqFZTbw6ZAch9Bn6Sd9pkB7W0LcS
 i7fF+/KD7A3nahKU4JgSJO8lnh1h3+UjxS6zrLb2GaJtvLsK6wCPOfGoTYt19B6k/6t2q9f
 6f4wYz0YpD1GZhGL+q0fQ==
X-UI-Out-Filterresults: notjunk:1;

On Thursday 19 February 2015 19:04:28 Ksenija Stanojevic wrote:
>  
>  #define SAA7191_SYNC_COUNT	30
>  #define SAA7191_SYNC_DELAY	100	/* milliseconds */
> @@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
>  
>  	ret = i2c_master_recv(client, value, 1);
>  	if (ret < 0) {
> -		printk(KERN_ERR "SAA7191: saa7191_read_status(): read failed\n");
> +		dev_dbg(sd->dev, "saa7191_read_status(): read failed\n");
>  		return ret;
>  	}
>  

Please make sure you use the correct printk level here: This was KERN_ERR,
so it should be converted to dev_err(), not dev_dbg().

> @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
>  
>  	err = saa7191_write_block(sd, sizeof(initseq), initseq);
>  	if (err) {
> -		printk(KERN_ERR "SAA7191 initialization failed\n");
> +		dev_dbg(sd->dev, "SAA7191 initialization failed\n");
>  		return err;
>  	}

Same here and another one further down.

> -	printk(KERN_INFO "SAA7191 initialized\n");
> +	dev_dbg(sd->dev, "SAA7191 initialized\n");
>  
>  	decoder->input = SAA7191_INPUT_COMPOSITE;
>  	decoder->norm = V4L2_STD_PAL;
>  

This one should be dev_info.

The rest looks good.

One more thing: I could not find this driver in linux-next, which tree
did you base this patch on?

	Arnd

