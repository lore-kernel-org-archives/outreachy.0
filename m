X-GM-THRID: 6338844661403090944
X-Received: by 10.194.189.113 with SMTP id gh17mr1459898wjc.6.1475910005046;
        Sat, 08 Oct 2016 00:00:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.18 with SMTP id u18ls1133681wmd.14.canary; Sat, 08 Oct
 2016 00:00:04 -0700 (PDT)
X-Received: by 10.194.6.227 with SMTP id e3mr368721wja.11.1475910004368;
        Sat, 08 Oct 2016 00:00:04 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p199si450288wmd.1.2016.10.08.00.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 00:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id b201so5913392wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 00:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FXdH2ZKYjZoTHJkVRkUyud0fdnUi0o9TH5XKfo0Jgqw=;
        b=AABwca0x0bbBWrUwYDDgFa9rEqh5hp/0M2PGamPVL+5UU/uxu9zaWk23902fiuvgD4
         u5jG7OnFWhLeA3vOFoB2WeweO9mIkqj9qAR5YAqcJkUsCIiMiR/xSRV5YvbqG0nfyzEU
         zOXLjvlTceJHjKxa5yq0sH5HiOYH4QqekoBzj1q7jsVqXKUOIIWesudH9yxyJl0KqmOJ
         cNmlhLTY7zfvVtsniUZ7PQzNwtoUFFK3kBeePvgDpSreVMBGAND5mqssnS9Mx9Dn8FYZ
         IW0Uoe9l0TY2JGOzT1WSnvv9JPw10xNWcswMZYTRCQ34F/Z+RNg8YM88FVYFtuQiR96Z
         4Y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FXdH2ZKYjZoTHJkVRkUyud0fdnUi0o9TH5XKfo0Jgqw=;
        b=L2eMnudnLwF/GAdS9RGdSUdibKQRX2Baa/7Jz8FItEMIpd23Q0Ue3PaiHbWT87bLf4
         JeDrZQO0Lmy3JYce5h0M2TOC8I2C/8Gucmj16NlsHw20UJvmzHZG8Kpp/V0ATgQO9gds
         yPeCDVSbemNnIzIbaka8+KEXE+WFW8zlaaz1KNcMC5jghNgBn4eZBBwIXmsJZ/+uwpw9
         UI2smj/6Poyl/UkuT6gx2TmDcY44biutYvAeihrE+wGTnVBnb5THxakZPo8zROf/yh69
         Yy3cc4J9ILJLZ/UL3ZSFfs1FlO2AplEMA99N87iqoaDN1G1zSYhBSE5f89DoxESd7lpk
         z3ng==
X-Gm-Message-State: AA6/9RkLfHybFBN17aFkh7BeiLlE+Vp3Ib1DxUjSaZASiylkQLM90KrmKbvhSkza8+c5EQ==
X-Received: by 10.28.74.21 with SMTP id x21mr2024902wma.16.1475910003935;
        Sat, 08 Oct 2016 00:00:03 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id h10sm9215733wje.48.2016.10.08.00.00.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 00:00:03 -0700 (PDT)
Date: Sat, 8 Oct 2016 10:00:02 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Delete unnecessary
 return statement
Message-ID: <20161008070001.GA2695@domino-MS-16Y1>
References: <20161007215439.GA15407@domino-MS-16Y1>
 <alpine.DEB.2.10.1610080804270.7750@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610080804270.7750@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 08, 2016 at 08:04:58AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 8 Oct 2016, Mihaela Muraru wrote:
> 
> > This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> >
> > WARNING: void function return statements are not generally useful.
> >
> > The 'return' statement is not useful here, because it is not necessary to be
> > forced the exit of the function.
> >
> > Like in this example:
> >
> > void funct() {
> >
> > 	if(condition) return;
> >
> > 	//do something;
> >
> > }
> 
> The patch is OK, but I don't understand what you mean by thi example.
> This looks like a case where the return cannot be removed.
> 
> julia

Thank you for reply.

It is an example when we can use 'return' from a void  function, but 
now I think that is too much information and I will send patch v2
without it.

mihaela

> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_hostif.c | 8 --------
> >  1 file changed, 8 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > index 8798b63..5ae013b 100644
> > --- a/drivers/staging/ks7010/ks_hostif.c
> > +++ b/drivers/staging/ks7010/ks_hostif.c
> > @@ -1933,7 +1933,6 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
> >  		break;
> >  	}
> >
> > -	return;
> >  }
> >
> >  struct wpa_suite_t {
> > @@ -2122,7 +2121,6 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
> >  		break;
> >
> >  	}
> > -	return;
> >  }
> >
> >  static
> > @@ -2236,7 +2234,6 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
> >  		break;
> >  	}
> >
> > -	return;
> >  }
> >
> >  static
> > @@ -2337,7 +2334,6 @@ void hostif_sme_powermgt_set(struct ks_wlan_private *priv)
> >  	}
> >  	hostif_power_mngmt_request(priv, mode, wake_up, receiveDTIMs);
> >
> > -	return;
> >  }
> >
> >  static
> > @@ -2355,7 +2351,6 @@ void hostif_sme_sleep_set(struct ks_wlan_private *priv)
> >  		break;
> >  	}
> >
> > -	return;
> >  }
> >
> >  static
> > @@ -2413,7 +2408,6 @@ void hostif_sme_set_key(struct ks_wlan_private *priv, int type)
> >  				       &priv->wpa.key[2].rx_seq[0]);
> >  		break;
> >  	}
> > -	return;
> >  }
> >
> >  static
> > @@ -2649,7 +2643,6 @@ void hostif_sme_task(unsigned long dev)
> >  				tasklet_schedule(&priv->sme_task);
> >  		}
> >  	}
> > -	return;
> >  }
> >
> >  /* send to Station Management Entity module */
> > @@ -2733,5 +2726,4 @@ int hostif_init(struct ks_wlan_private *priv)
> >  void hostif_exit(struct ks_wlan_private *priv)
> >  {
> >  	tasklet_kill(&priv->sme_task);
> > -	return;
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161007215439.GA15407%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

