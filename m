X-GM-THRID: 6392835608825298944
X-Received: by 10.107.30.65 with SMTP id e62mr4550638ioe.1.1488476061099;
        Thu, 02 Mar 2017 09:34:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls4687464ota.23.gmail; Thu, 02 Mar
 2017 09:34:20 -0800 (PST)
X-Received: by 10.129.70.84 with SMTP id t81mr5545446ywa.146.1488476060566;
        Thu, 02 Mar 2017 09:34:20 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1681465pfd.3.2017.03.02.09.34.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:34:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so9965135pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g/njTA0P5jXFaTJ1SJtVEV3pn0MgFS9GdzKzqevrIAI=;
        b=oFWOpLa2cf9pA5yqZSHg/X9u8xI0toSHfYnG2G+P1YLALGLssFPwRpxukwePAFBiTd
         m1loPDth0j4d9YiuzuEbq8Afz03EfxUElEWpD7nu90lkLu8e0CJnD7B+lWVzc3hMhQSv
         O2tc6fnUsz0wFz5gCAc5Jz189roRhx7IW3+woR70Wkf6vLIAllIzxcxbvYjx1SvPowFn
         EL4ewkK9in8XPE2JV3pwxiejAsn0N+PsbJtWcBxTifpx4FAT8IKvkmjwYwwqdXuQzDw8
         M8FeRDTJlqttLrS2Oh5Lm/sMhnI+GmUEg8iHwowa9GBSlyPdIArFO351U5QhWHNWjn1h
         Q5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g/njTA0P5jXFaTJ1SJtVEV3pn0MgFS9GdzKzqevrIAI=;
        b=LfGFd7t7GZAa35RbJzbcWW8K181prLtvbd4VgOtryrebfUYfhMdvwF+HeX3r+WTJhm
         qCuCqSBgikOURsWqFwPO9tbhDQWoV1WxrkDGV7OpEn+pfbjEOK8gRxKBiY3LhxOO3TwO
         u1F5tdxHd45Iwx9/sg6gqpJ+8tuUWdRB3xavg4Af40qYnGUmKXwKfKlS6JESKI545xiB
         9/0FMyB2VgHoaPZBBKbQI5YRm1b4v30ClA522RNFErUiYxdb8pZUSVM66y3+rYty5HT7
         JWoS/gpSwB257cJaEZ+8wiBx7lDc87C3VsJ6o517/H8psA2W1zIpylTa/iIostov56pY
         /41Q==
X-Gm-Message-State: AMke39ncMaSaYGxGo7uMs+IJLD5FXzObYh55ZxfTpaswHWkPBhAuQMdPnMG0TvR8AYEQsA==
X-Received: by 10.98.61.209 with SMTP id x78mr16985149pfj.88.1488476060171;
        Thu, 02 Mar 2017 09:34:20 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id w18sm18273167pfa.127.2017.03.02.09.34.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 09:34:19 -0800 (PST)
Date: Thu, 2 Mar 2017 09:34:18 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com,
	Juliana Rodrigues <juliana.orod@gmail.com>,
	thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: wlan-ng: Fix sparse
 warning of restricted __le16
Message-ID: <20170302173417.GA2934@d830.WORKGROUP>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703021047350.3414@hadrien>
 <alpine.DEB.2.20.1703021050020.3414@hadrien>
 <CALrZqyNGZcP8c9oeS65r-PRTPpwcn664iB2WvWdx3ccD5KRRLg@mail.gmail.com>
 <alpine.DEB.2.20.1703021213050.3414@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703021213050.3414@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 02, 2017 at 12:14:40PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 2 Mar 2017, SIMRAN SINGHAL wrote:
> 
> > On Thu, Mar 2, 2017 at 3:20 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > >
> > > On Thu, 2 Mar 2017, Julia Lawall wrote:
> > >
> > >>
> > >>
> > >> On Thu, 2 Mar 2017, simran singhal wrote:
> > >>
> > >> > This patch fixes the following sparse warning:
> > >> > warning: cast to restricted __le16
> > >>
> > >> You commit message should not say just fix X.  What have you done to carry
> > >> out the fix and why is this the correct approach?
> > >
> > > This comment applies to all of the patches in the series.
> > >
> > > julia
> > >
> > The changes and sparse warnings for them seems reasonable to me as
> > after doing the
> > change sparse was not showing error like cast to __le16 or something like this.
> > Also it compiled perfectly.
> 
> This doesn't mean that it actually works.  The function calls at least may
> have been put there for a reason.  Maysbe you can find other patches that
> relate to this call and see what they do.
> 
> julia

Hi Simran, 

Just following on Julia's feedback and I see you've gotten
a message that this breaks little endian machines.

Good for you for trying to go deeper.  I'd suggest taking this one
at a time and figure out what is going on with one of them.  As Julia
says, with this kind of change, you will have to prove why it is
correct.  (You might not be able to change any of these - I don't know,
but I know you'll learn something!)

Look here - and then pick one to trace through -
https://kernelnewbies.org/EndianIssues

Generally - probably best to test the waters with something of this
type, with a single patch.  Get that nailed, then move onto a patchset,
if you have a pattern.

Heads down & good luck!

alisons

> 
> 
> > >>
> > >> julia
> > >>
> > >> >
> > >> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > >> > ---
> > >> >  drivers/staging/wlan-ng/prism2sta.c | 51 ++++++++++++++++++-------------------
> > >> >  1 file changed, 25 insertions(+), 26 deletions(-)
> > >> >
> > >> > diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> > >> > index 984804b..82d3a70 100644
> > >> > --- a/drivers/staging/wlan-ng/prism2sta.c
> > >> > +++ b/drivers/staging/wlan-ng/prism2sta.c
> > >> > @@ -372,10 +372,9 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
> > >> >                     qualmsg->noise.status =
> > >> >                         P80211ENUM_msgitem_status_data_ok;
> > >> >
> > >> > -                   qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
> > >> > -                   qualmsg->level.data =
> > >> > -                           le16_to_cpu(hw->qual.asl_curr_bss);
> > >> > -                   qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
> > >> > +                   qualmsg->link.data = hw->qual.cq_curr_bss;
> > >> > +                   qualmsg->level.data = hw->qual.asl_curr_bss;
> > >> > +                   qualmsg->noise.data = hw->qual.anl_curr_fc;
> > >> >                     qualmsg->txrate.data = hw->txrate;
> > >> >
> > >> >                     break;
> > >> > @@ -603,10 +602,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
> > >> >     }
> > >> >
> > >> >     /* get all the nic id fields in host byte order */
> > >> > -   hw->ident_nic.id = le16_to_cpu(hw->ident_nic.id);
> > >> > -   hw->ident_nic.variant = le16_to_cpu(hw->ident_nic.variant);
> > >> > -   hw->ident_nic.major = le16_to_cpu(hw->ident_nic.major);
> > >> > -   hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
> > >> > +   hw->ident_nic.id = hw->ident_nic.id;
> > >> > +   hw->ident_nic.variant = hw->ident_nic.variant;
> > >> > +   hw->ident_nic.major = hw->ident_nic.major;
> > >> > +   hw->ident_nic.minor = hw->ident_nic.minor;
> > >> >
> > >> >     netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
> > >> >                 hw->ident_nic.id, hw->ident_nic.major,
> > >> > @@ -622,10 +621,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
> > >> >     }
> > >> >
> > >> >     /* get all the private fw id fields in host byte order */
> > >> > -   hw->ident_pri_fw.id = le16_to_cpu(hw->ident_pri_fw.id);
> > >> > -   hw->ident_pri_fw.variant = le16_to_cpu(hw->ident_pri_fw.variant);
> > >> > -   hw->ident_pri_fw.major = le16_to_cpu(hw->ident_pri_fw.major);
> > >> > -   hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
> > >> > +   hw->ident_pri_fw.id = hw->ident_pri_fw.id;
> > >> > +   hw->ident_pri_fw.variant = hw->ident_pri_fw.variant;
> > >> > +   hw->ident_pri_fw.major = hw->ident_pri_fw.major;
> > >> > +   hw->ident_pri_fw.minor = hw->ident_pri_fw.minor;
> > >> >
> > >> >     netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
> > >> >                 hw->ident_pri_fw.id, hw->ident_pri_fw.major,
> > >> > @@ -648,10 +647,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
> > >> >     }
> > >> >
> > >> >     /* get all the station fw id fields in host byte order */
> > >> > -   hw->ident_sta_fw.id = le16_to_cpu(hw->ident_sta_fw.id);
> > >> > -   hw->ident_sta_fw.variant = le16_to_cpu(hw->ident_sta_fw.variant);
> > >> > -   hw->ident_sta_fw.major = le16_to_cpu(hw->ident_sta_fw.major);
> > >> > -   hw->ident_sta_fw.minor = le16_to_cpu(hw->ident_sta_fw.minor);
> > >> > +   hw->ident_sta_fw.id = hw->ident_sta_fw.id;
> > >> > +   hw->ident_sta_fw.variant = hw->ident_sta_fw.variant;
> > >> > +   hw->ident_sta_fw.major = hw->ident_sta_fw.major;
> > >> > +   hw->ident_sta_fw.minor = hw->ident_sta_fw.minor;
> > >> >
> > >> >     /* strip out the 'special' variant bits */
> > >> >     hw->mm_mods = hw->ident_sta_fw.variant & GENMASK(15, 14);
> > >> > @@ -683,11 +682,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
> > >> >     /* get all the Compatibility range, modem interface supplier
> > >> >      * fields in byte order
> > >> >      */
> > >> > -   hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
> > >> > -   hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
> > >> > -   hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
> > >> > -   hw->cap_sup_mfi.bottom = le16_to_cpu(hw->cap_sup_mfi.bottom);
> > >> > -   hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
> > >> > +   hw->cap_sup_mfi.role = hw->cap_sup_mfi.role;
> > >> > +   hw->cap_sup_mfi.id = hw->cap_sup_mfi.id;
> > >> > +   hw->cap_sup_mfi.variant = hw->cap_sup_mfi.variant;
> > >> > +   hw->cap_sup_mfi.bottom = hw->cap_sup_mfi.bottom;
> > >> > +   hw->cap_sup_mfi.top = hw->cap_sup_mfi.top;
> > >> >
> > >> >     netdev_info(wlandev->netdev,
> > >> >                 "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> > >> > @@ -707,11 +706,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
> > >> >     /* get all the Compatibility range, controller interface supplier
> > >> >      * fields in byte order
> > >> >      */
> > >> > -   hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
> > >> > -   hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
> > >> > -   hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
> > >> > -   hw->cap_sup_cfi.bottom = le16_to_cpu(hw->cap_sup_cfi.bottom);
> > >> > -   hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
> > >> > +   hw->cap_sup_cfi.role = hw->cap_sup_cfi.role;
> > >> > +   hw->cap_sup_cfi.id = hw->cap_sup_cfi.id;
> > >> > +   hw->cap_sup_cfi.variant = hw->cap_sup_cfi.variant;
> > >> > +   hw->cap_sup_cfi.bottom = hw->cap_sup_cfi.bottom;
> > >> > +   hw->cap_sup_cfi.top = hw->cap_sup_cfi.top;
> > >> >
> > >> >     netdev_info(wlandev->netdev,
> > >> >                 "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> > >> > --
> > >> > 2.7.4
> > >> >
> > >> > --
> > >> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > >> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > >> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488448146-29452-1-git-send-email-singhalsimran0%40gmail.com.
> > >> > For more options, visit https://groups.google.com/d/optout.
> > >> >
> > >>
> > >> --
> > >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> > >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703021047350.3414%40hadrien.
> > >> For more options, visit https://groups.google.com/d/optout.
> > >>
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyNGZcP8c9oeS65r-PRTPpwcn664iB2WvWdx3ccD5KRRLg%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703021213050.3414%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

