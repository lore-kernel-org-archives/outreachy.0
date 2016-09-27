X-GM-THRID: 6334708873542238208
X-Received: by 10.31.95.5 with SMTP id t5mr5095944vkb.1.1474994385323;
        Tue, 27 Sep 2016 09:39:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls3359260ota.29.gmail; Tue, 27 Sep
 2016 09:39:44 -0700 (PDT)
X-Received: by 10.176.66.6 with SMTP id i6mr1304228uai.34.1474994384391;
        Tue, 27 Sep 2016 09:39:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si696937pab.2.2016.09.27.09.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 09:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so923311pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 09:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KqN059g8NAdDpjwNZr9O+7+6YNLkjtOoDt1U3IrEKI8=;
        b=YJUqb7m/xjlkSExg2Koolki4MXU3lMv2Oq4xqQXqvKtDPFgkX1J203yLb0cMHLwdCc
         VGVQcTS2h2m+vpYf50bXxCHNztMi6Zo2c2l3nQ6rISLo2Qu7gPxf08QFirshtPgc6Joj
         dXsG61kCHk6TrAkvzmMB0GLWppMySU9NYXrSSCItxsGLoAmyouucoWFuY3zwcbSaEsy9
         g0cXf7z31l491SZmZ+dGsBvke9G+ym7TuEYbu/1HsJ6iWBXGlLueWq4yeh4izJA4UDwT
         XfIXGxnyAGaqwnvNGnmhbXgPcsJKF298Si58hYseOaHEU8pxS8vB4X9v0oS5Wt1UNXf/
         ThJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KqN059g8NAdDpjwNZr9O+7+6YNLkjtOoDt1U3IrEKI8=;
        b=ihdQWppXG4BzR9/swWp8GYqhfDLlYK0B33j0SJuC5UJt0CMYxO0Ss9sWrvaGoCbNc2
         /DjNvs6LGYSYX/Pm4uhQedw8MNSsUAgIBLF5j76BwLfd84XaQuJjTcmvryGv5mvrf2Tx
         7dKB+i06AXAm5Adp+/jZr/9hIkgWGIk6OF0A82BYjqFe9SJGsOcwgegC9lpTHj8MXv0j
         d1XllN8joTcLQ3QdT/ZSDL5BWZCAyYmbRFTwYZPuenfbdh+G0t399vDvLzZYmx5ygXI+
         7H23U7YI7wzCpV/sst6dRX80ATRIEnQcwm/+ScbG/AuCflqqRjBLQ95gSO/4LDAKCJsJ
         1A8g==
X-Gm-Message-State: AA6/9RljQ/o45h5z95xEXwveueDXXr2/YWrP3EvlEEdtt8bZUh1F//xJGErC3sO0vxDRtg==
X-Received: by 10.66.199.38 with SMTP id jh6mr12394998pac.160.1474994384167;
        Tue, 27 Sep 2016 09:39:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id d2sm6130475pfe.94.2016.09.27.09.39.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 09:39:43 -0700 (PDT)
Date: Tue, 27 Sep 2016 22:09:38 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: vt6656: Make return type changes of
 functions
Message-ID: <20160927163937.GA4552@namrata-HP-Pavilion-g6-Notebook-PC>
References: <cover.1474912143.git.namrataashettar@gmail.com>
 <9a6403af18f7bd45499f6745ab61d6dd4aa7dea2.1474912143.git.namrataashettar@gmail.com>
 <20160927110930.GA16803@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927110930.GA16803@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 27, 2016 at 01:09:30PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Sep 26, 2016 at 11:56:10PM +0530, Namrata A Shettar wrote:
> > Change return type of functions to reflect changes in code.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6656/card.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
> > index c2cde7e..84270c1 100644
> > --- a/drivers/staging/vt6656/card.h
> > +++ b/drivers/staging/vt6656/card.h
> > @@ -41,14 +41,14 @@ void vnt_update_ifs(struct vnt_private *);
> >  void vnt_update_top_rates(struct vnt_private *);
> >  int vnt_ofdm_min_rate(struct vnt_private *);
> >  void vnt_adjust_tsf(struct vnt_private *, u8, u64, u64);
> > -bool vnt_get_current_tsf(struct vnt_private *, u64 *);
> > +void vnt_get_current_tsf(struct vnt_private *, u64 *);
> >  bool vnt_clear_current_tsf(struct vnt_private *);
> >  void vnt_reset_next_tbtt(struct vnt_private *, u16);
> >  void vnt_update_next_tbtt(struct vnt_private *, u64, u16);
> >  u64 vnt_get_next_tbtt(u64, u16);
> >  u64 vnt_get_tsf_offset(u8 byRxRate, u64 qwTSF1, u64 qwTSF2);
> > -int vnt_radio_power_off(struct vnt_private *);
> > -int vnt_radio_power_on(struct vnt_private *);
> > +void vnt_radio_power_off(struct vnt_private *);
> > +void vnt_radio_power_on(struct vnt_private *);
> >  u8 vnt_get_pkt_type(struct vnt_private *);
> >  void vnt_set_bss_mode(struct vnt_private *);
> 
> You have to do this in your first patch, as the build broke without
> these changes, right?
> 
> You can never break the build with any single patch.
> 
> Please fix up and resend.


I am sorry I understand that this is wrong but I don't think I quite got
what has to be done. Does this have to be the first patch of the
patchset and the other second?

thanks,

namrata

> 
> thanks,
> 
> greg k-h

