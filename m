X-GM-THRID: 6208828760687378432
X-Received: by 10.107.159.132 with SMTP id i126mr5450222ioe.23.1445607807064;
        Fri, 23 Oct 2015 06:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.243 with SMTP id t19ls205629igr.15.gmail; Fri, 23 Oct
 2015 06:43:26 -0700 (PDT)
X-Received: by 10.50.176.225 with SMTP id cl1mr3398636igc.7.1445607806656;
        Fri, 23 Oct 2015 06:43:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si2284879pab.1.2015.10.23.06.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so119211438pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=SFnL64US1hPsdLCX78wOt824seDAu66cnoWHOisorow=;
        b=eY13QLyr5y+gWl8Jiqsuf3Sncfbg291u2bfxlCsxZ+Rn9XQ9hAZvVmEc/xDw/ma8fu
         zB1F+HKc+l8++z0uN5Qjje1S5q790cQo/v8rfoV34RJUXIlVN6G8n+7Ohyt/lqw1UXO1
         GLFTjFLY9hO7X1QPAQEZ/4IGSw7hJtwghw8v/urJBBtRMRwpKayxDiKAjLBTTXXqXFnN
         MPFDDgoqGt1gOTTEceXhWoM6zNGHSlvZGYIZiO5ZC9rfYNNU9Y6lJBRkqHy84QaBLqGU
         u8WENmef3ISyb/5dkJr/D1On2c0+3DCat3H9dfMYIOUF6iyRqpQ0ilfId848ucChsqsX
         CyjQ==
X-Received: by 10.69.1.65 with SMTP id be1mr5221016pbd.153.1445607806526;
        Fri, 23 Oct 2015 06:43:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ve8sm19187772pbc.48.2015.10.23.06.43.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:43:26 -0700 (PDT)
Date: Fri, 23 Oct 2015 19:13:17 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use
 put_unaligned_le32
In-Reply-To: <CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1510231909270.16823@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com> <CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-709192920-1445607805=:16823"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-709192920-1445607805=:16823
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT



On Fri, 23 Oct 2015, Vaishali Thakkar wrote:

> 
> 
> On 23 Oct 2015 18:36, "Shraddha Barke" <shraddha.6596@gmail.com> wrote:
> >
> > Introduce the use of function put_unaligned_le32.
> >
> > Coccinelle semantic patch used -
> 
> This is not whole patch which I wrote. So, it could be good to write 'simplified semantic patch'.

Yes I did check that. This patch is based on the whole patch you wrote. 
It's brilliant :) 
I'll send a v2.
> 
> Also, you can check the whole patch in my github account if you are interested. :)
> 
> > @@ identifier tmp; expression ptr; expression y,e; type T; @@
> >
> > - tmp = cpu_to_le32(y);
> >
> >   <+... when != tmp
> > - memcpy(ptr, (T)&tmp, ...);
> > + put_unaligned_le32(y,ptr);
> >   ...+>
> > ? tmp = e
> >
> > @@ type T; identifier tmp; @@
> >
> > - T tmp;
> > ...when != tmp
> >
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > index 9733aa6..1662c03c 100644
> > --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter *padapter, u32 mask, u8 arg)
> >         u8 buf[5];
> >
> >         memset(buf, 0, 5);
> > -       mask = cpu_to_le32(mask);
> > -       memcpy(buf, &mask, 4);
> > +       put_unaligned_le32(mask, buf);
> >         buf[4]  = arg;
> >
> >         FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-send-email-shraddha.6596%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> 
> 
>
--8323329-709192920-1445607805=:16823--

