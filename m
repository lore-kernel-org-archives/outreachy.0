X-GM-THRID: 6211294151973011456
X-Received: by 10.112.144.105 with SMTP id sl9mr1619212lbb.3.1446206228436;
        Fri, 30 Oct 2015 04:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.160.72 with SMTP id j69ls172073lfe.106.gmail; Fri, 30 Oct
 2015 04:57:07 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr1667741lbb.22.1446206227818;
        Fri, 30 Oct 2015 04:57:07 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id g9si78696wmd.2.2015.10.30.04.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 04:57:07 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MSa4i-1a20E31k2u-00RclM; Fri, 30 Oct
 2015 12:57:07 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: comedi: vmk80xx: Replace semaphore with mutex
Date: Fri, 30 Oct 2015 12:57:06 +0100
Message-ID: <4329000.9joMaq9Gbl@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1446179606-29779-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1446179606-29779-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:4WvrjQ1WhRpmBdHcFQrwEsWfx8PfsLrA5W3gF9GTE1TsfNgPPKQ
 djM8HVBBYPafVPg2FuOhQt204HGDsoeT6x2vB2/HsahK9oyLSa3ox5Vmk0a/ckIEeb/F4qp
 dG6vednJhRZXHhcUR5q57KoD8h1LNyZgfje9/4GxYTITnTsBUALk826c4Zs2jF+YjRe+vRO
 Vs578k19WofSEe05pdf7Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:o5ZY17pE39c=:rUerof+lkyXynhdsrI/op+
 LVzvoqtbo9MSybuyJs6KGDkZIZS/FMP3v0Aat49mdcnBdpuuQ8A3w6Tos+YCuxwow+lC5L47b
 Qp6jL/ugodZW4bfLFQtAE8eMlWgx9662LkGRyWW9YA0uR1t2mV2osqYCKdejgVVbVH+dR7bnZ
 9vwKtfl6Nt8g76rFZcKoCpVSXwMpKFgmZM2QVpgYBs6a1nYdOsqs2kVmgE5W+cCH6l2QQamyv
 co1zaVIZ7AXssObqenYupvdBEeyk9ZPgIaueRMx5Ug2/TNw2GWEqloq3V+Zg/AI6XTjsstEen
 YN0lIjCnnyrq9W3IoIhUP2ZG0yKhKcGhS63HaqzsbRhxuPpILs5/saPX0+0FM3t+Ifrg2LFFI
 oEo5mhKy0++YO+IW+GjVKDF7ZYURiCcF4OgsDhaK/RdB9Q31waUnYEDiRnMixYqI1QbPuHYW7
 r6S7KqFPzCJ7N9+O0L1ozRdpfgzg4syhAWDwHm4oAo9Ohi/WXCc0fjzfIUCPiajSsj6SHVSlQ
 WpzBsAXiuT/XEOkOsey5VF2czOsTaMZ+T8f1yWMMmvfuhehc9ktsTZtLTz7xgLjo7Jpc4CGrn
 1WxoSaQBn6q6q6KMi4iTgymI7kJ0MTRdr1PcUBzUKvsK6dp2jw05FFOv9ASqzcvHdPmGaxW3t
 SzilGgMX6V3YJe9fdpCyIk/0IOTgnionD5v5LBred1tsL+4BUfaKjbYl4yoCOkDbu47uv6aH5
 YbRlUCdovNPlyLHF

On Thursday 29 October 2015 21:33:26 Ksenija Stanojevic wrote:
> @@ -817,7 +817,7 @@ static int vmk80xx_auto_attach(struct comedi_device *dev,
>         if (ret)
>                 return ret;
>  
> -       sema_init(&devpriv->limit_sem, 8);
> +       mutex_init(&devpriv->limit_mut);
>  
>         usb_set_intfdata(intf, devpriv);
>  

I missed this one line when I made the recommendation to use a mutex here.

I'm sorry about my mistake, but using a mutex will not be a direct
replacement as a consequence (and neither would rwsem). We only have
a very small number of semaphores in the kernel that are truly counting
like this one is: Normal drivers use 'sema_init(&devpriv->limit_sem, 1)'
to get mutex behavior where the 'down()' call ensures that the following
code can be entered only from one process, whereas this one allows
eight concurrent users to enter the function.

We should still try to replace the semaphore (as we should do in
all drivers), but doing so is now harder. An equivalent replacement
would be:

-	down(&devpriv->limit_sem);
+	wait_event(devpriv->limit_wq, atomic_add_unless(&devpriv->limit, 1, VMK80XX_LIMIT));
	...
-	up(&devpriv->limit_sem);
+	atomic_dec(&devpriv->limit);
+	wake_up(&devpriv->limit_sem);

I have an old patch for the usb-skeleton driver (and I think I never
submitted that patch) at
http://git.kernel.org/cgit/linux/kernel/git/arnd/playground.git/commit/?h=semaphore-3.2&id=7f3ec7ad361f08317480a632d67fe64928f71fa7

which uses a similar construct (presumably this one was copied from
usb-skeleton). If you do this, please research and explain in the
changelog the following:

- Does the current usage of limit_sem in this driver actually make
  sense?
- If not, do we need a mutex instead, or is the semaphore completely
  useless here?

	Arnd

