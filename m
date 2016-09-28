X-GM-THRID: 6334708873542238208
X-Received: by 10.157.48.8 with SMTP id d8mr4129255otc.96.1475054673722;
        Wed, 28 Sep 2016 02:24:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.75 with SMTP id 69ls505895otg.14.gmail; Wed, 28 Sep
 2016 02:24:33 -0700 (PDT)
X-Received: by 10.129.122.9 with SMTP id v9mr8184091ywc.51.1475054673256;
        Wed, 28 Sep 2016 02:24:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si2030152pab.1.2016.09.28.02.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 02:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 715753EE;
	Wed, 28 Sep 2016 09:24:32 +0000 (UTC)
Date: Wed, 28 Sep 2016 11:24:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: vt6656: Make return type changes of
 functions
Message-ID: <20160928092436.GA16425@kroah.com>
References: <cover.1474912143.git.namrataashettar@gmail.com>
 <9a6403af18f7bd45499f6745ab61d6dd4aa7dea2.1474912143.git.namrataashettar@gmail.com>
 <20160927110930.GA16803@kroah.com>
 <20160927163937.GA4552@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927163937.GA4552@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 10:09:38PM +0530, Namrata A Shettar wrote:
> On Tue, Sep 27, 2016 at 01:09:30PM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Sep 26, 2016 at 11:56:10PM +0530, Namrata A Shettar wrote:
> > > Change return type of functions to reflect changes in code.
> > > 
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/card.h | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
> > > index c2cde7e..84270c1 100644
> > > --- a/drivers/staging/vt6656/card.h
> > > +++ b/drivers/staging/vt6656/card.h
> > > @@ -41,14 +41,14 @@ void vnt_update_ifs(struct vnt_private *);
> > >  void vnt_update_top_rates(struct vnt_private *);
> > >  int vnt_ofdm_min_rate(struct vnt_private *);
> > >  void vnt_adjust_tsf(struct vnt_private *, u8, u64, u64);
> > > -bool vnt_get_current_tsf(struct vnt_private *, u64 *);
> > > +void vnt_get_current_tsf(struct vnt_private *, u64 *);
> > >  bool vnt_clear_current_tsf(struct vnt_private *);
> > >  void vnt_reset_next_tbtt(struct vnt_private *, u16);
> > >  void vnt_update_next_tbtt(struct vnt_private *, u64, u16);
> > >  u64 vnt_get_next_tbtt(u64, u16);
> > >  u64 vnt_get_tsf_offset(u8 byRxRate, u64 qwTSF1, u64 qwTSF2);
> > > -int vnt_radio_power_off(struct vnt_private *);
> > > -int vnt_radio_power_on(struct vnt_private *);
> > > +void vnt_radio_power_off(struct vnt_private *);
> > > +void vnt_radio_power_on(struct vnt_private *);
> > >  u8 vnt_get_pkt_type(struct vnt_private *);
> > >  void vnt_set_bss_mode(struct vnt_private *);
> > 
> > You have to do this in your first patch, as the build broke without
> > these changes, right?
> > 
> > You can never break the build with any single patch.
> > 
> > Please fix up and resend.
> 
> 
> I am sorry I understand that this is wrong but I don't think I quite got
> what has to be done. Does this have to be the first patch of the
> patchset and the other second?

Neither, it has to be all one patch, right?  Try building the kernel
with only one of these patches applied and see what happens...

thanks,

greg k-h

