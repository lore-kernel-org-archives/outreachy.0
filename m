X-GM-THRID: 6333636808059912192
X-Received: by 10.194.96.237 with SMTP id dv13mr925173wjb.6.1474880563766;
        Mon, 26 Sep 2016 02:02:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.14 with SMTP id c14ls1278743wme.17.gmail; Mon, 26 Sep
 2016 02:02:43 -0700 (PDT)
X-Received: by 10.28.38.194 with SMTP id m185mr753642wmm.5.1474880563232;
        Mon, 26 Sep 2016 02:02:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si501773wmg.3.2016.09.26.02.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 02:02:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,398,1470693600"; 
   d="scan'208";a="238250208"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Sep 2016 11:02:42 +0200
Date: Mon, 26 Sep 2016 11:02:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: ks7010: ks_wlan_net:
 Use netdev_ or pr_info instead of printk
In-Reply-To: <CALta04y3Z_12G_7Gcv=65Z9Qb1Hc8UkJ0B4UMVfjQZz9HuKhxw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609261102000.3508@hadrien>
References: <20160923213343.GA20036@fireworks> <20160925103516.GB8119@kroah.com> <CALta04y3Z_12G_7Gcv=65Z9Qb1Hc8UkJ0B4UMVfjQZz9HuKhxw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1070976958-1474880560=:3508"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1070976958-1474880560=:3508
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 26 Sep 2016, Georgiana Chelu wrote:

> I submitted the third version of the patch. I had to change the title,
> so the patch will not appear in this thread.
>
> About the function static void print_hif_event(int event); I have
> no clue how to find the device structure. Could you give me some hints?

Look at the call sites of print_hif_event and see if there is some
argument you could add that would provide the needed information.

julia

>
> Thank you,
> Georgiana
>
> On 25 September 2016 at 13:35, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Sat, Sep 24, 2016 at 12:33:43AM +0300, Georgiana Rodica Chelu
>       wrote:
>       > The checkpatch.pl script found the following warning:
>       >
>       > WARNING: printk() should include KERN_ facility level
>       >
>       > After adding the KERN_ facility level to printk(), the script
>       showed
>       > another warning:
>       >
>       > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev,
>       ... then
>       > dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
>       >
>       > The warning is similar for KERN_ERR and KERN_DEBUG. In
>       conclusion,
>       > use netdev_info(), netdev_err() or netdev_dbg() when there is
>       > a netdev device and use pr_info() in the remained cases.
>       >
>       > Signed-off-by: Georgiana Rodica Chelu
>       <georgiana.chelu93@gmail.com>
>       > ---
>       > Changes in v2:
>       >         - make the commit message more clear
>       >       - replace all the appearances of printk()
>       >
>       >  drivers/staging/ks7010/ks_wlan_net.c | 92
>       ++++++++++++++++++------------------
>       >  1 file changed, 46 insertions(+), 46 deletions(-)
>       >
>       > diff --git a/drivers/staging/ks7010/ks_wlan_net.c
>       b/drivers/staging/ks7010/ks_wlan_net.c
>       > index d13a06b..9ef44cc 100644
>       > --- a/drivers/staging/ks7010/ks_wlan_net.c
>       > +++ b/drivers/staging/ks7010/ks_wlan_net.c
>       > @@ -233,9 +233,9 @@ static int ks_wlan_set_freq(struct
>       net_device *dev,
>       >               /* We should do a better check than that,
>       >                * based on the card capability !!! */
>       >               if ((channel < 1) || (channel > 14)) {
>       > -                     printk(KERN_DEBUG
>       > -                            "%s: New channel value of %d is
>       invalid!\n",
>       > -                            dev->name, fwrq->m);
>       > +                     netdev_dbg(dev,
>       > +                                "%s: New channel value of %d
>       is invalid!\n",
>       > +                                dev->name, fwrq->m);
>       >                       rc = -EINVAL;
>       >               } else {
>       >                       /* Yes ! We can set it !!! */
>       > @@ -2671,17 +2671,17 @@ static int
>       ks_wlan_set_sleep_mode(struct net_device *dev,
>       >
>       >       if (*uwrq == SLP_SLEEP) {
>       >               priv->sleep_mode = *uwrq;
>       > -             printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
>       > +             netdev_info(dev, "SET_SLEEP_MODE %d\n",
>       priv->sleep_mode);
>       >
>       >               hostif_sme_enqueue(priv, SME_STOP_REQUEST);
>       >               hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
>       >
>       >       } else if (*uwrq == SLP_ACTIVE) {
>       >               priv->sleep_mode = *uwrq;
>       > -             printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
>       > +             netdev_info(dev, "SET_SLEEP_MODE %d\n",
>       priv->sleep_mode);
>       >               hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
>       >       } else {
>       > -             printk("SET_SLEEP_MODE %d errror\n", *uwrq);
>       > +             netdev_err(dev, "SET_SLEEP_MODE %d errror\n",
>       *uwrq);
>       >               return -EINVAL;
>       >       }
>       >
>       > @@ -2783,7 +2783,7 @@ static int ks_wlan_get_wps_enable(struct
>       net_device *dev,
>       >       }
>       >       /* for SLEEP MODE */
>       >       *uwrq = priv->wps.wps_enabled;
>       > -     printk("return=%d\n", *uwrq);
>       > +     netdev_info(dev, "return=%d\n", *uwrq);
>       >
>       >       return 0;
>       >  }
>       > @@ -2978,112 +2978,112 @@ static void print_hif_event(int
>       event)
>       >
>       >       switch (event) {
>       >       case HIF_DATA_REQ:
>       > -             printk("HIF_DATA_REQ\n");
>       > +             pr_info("HIF_DATA_REQ\n");
>       >               break;
>       >       case HIF_DATA_IND:
>       > -             printk("HIF_DATA_IND\n");
>       > +             pr_info("HIF_DATA_IND\n");
>
> All of these should have a device structure somewhere, please fix this
> function up to have that.  Right now I'd just take these changes out
> of
> the patch and submit the rest.
>
> thanks,
>
> greg k-h
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CALta04y3Z_12G_7Gcv%3D65
> Z9Qb1Hc8UkJ0B4UMVfjQZz9HuKhxw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1070976958-1474880560=:3508--

