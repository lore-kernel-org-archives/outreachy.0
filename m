X-GM-THRID: 6332991195333001216
X-Received: by 10.157.5.243 with SMTP id 106mr255449otd.47.1474615987307;
        Fri, 23 Sep 2016 00:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.70 with SMTP id c67ls544874iod.39.gmail; Fri, 23 Sep
 2016 00:33:05 -0700 (PDT)
X-Received: by 10.98.54.197 with SMTP id d188mr1207038pfa.11.1474615984999;
        Fri, 23 Sep 2016 00:33:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si1903700pfw.1.2016.09.23.00.33.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 00:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so4890214pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 00:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tzMUVWO/qiOotNnhC4GvefT1Y00DiW+HMj2XldVvFsw=;
        b=tpZyZk5ppjEZUteIp5rIbjn5x2WclFUnPZMYPZF7taTlkPlPRY7Iw2qXESZkqXpTju
         iIvwo+bSYEsmoOu9hu974i55LB5ULYn3CAV6mCzptfBWXosnYr2Ngvr9SoSpv+z13vYf
         UPgw0qolAaIh/jcq3M0pZ5lmuS1OA7qBQv7n1K4On8zkeB6rdg7lgdqXLhtXR4r47nAo
         aATKbARHespbWsJ4BD7tAzsAHYLMNJadHl4jvaVNlGbnmzt53/mP5Bp7hvGzJRe8nCbS
         XhCwF6R5TLBVeiFn8bouxszFcDc+D85bndaA6B7BfjqE/gs/L4H8bIXBHG+bLdem+ip/
         vBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tzMUVWO/qiOotNnhC4GvefT1Y00DiW+HMj2XldVvFsw=;
        b=AZdZr74Glhy7tgQ5a/BdEz6WA+8UXBpZTm2C68V5UQWQFBJ/RoEknEIfCHqz9evNUj
         hjL5WqCWdVrPVdJTpksRcgcvYlmMbJ7jM89BXptvRujZpukH/TcLUgnvbH43XtQwJzNb
         M82Aapo6TQy/O4nsZ3RjJbLjZxEcmLD71OP2xbQW4HThB5qX3WtpY0i/19GVnGFls7ik
         yDumS70k/wBLW8JZ3lsOHO3moF2k/zzq00KUQlQFScqBXCsf9HzbHW/Nd7Sa2SqV4Rb2
         sWdj0uKXEJynCmRDyD22RtwLZV/GT/U+aMiLZLF+4jaXN0gYEtJA2qfyhURBXZpMAUhK
         HPGA==
X-Gm-Message-State: AE9vXwPLFw0O0ffFaP4KMIIjsNCNThRGLIYF19Eo3GHuf9uKenaeZtEUuJC0AKXQvRx+Kw==
X-Received: by 10.98.57.136 with SMTP id u8mr9978880pfj.93.1474615984525;
        Fri, 23 Sep 2016 00:33:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id i62sm8901869pfe.70.2016.09.23.00.33.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 00:33:03 -0700 (PDT)
Date: Fri, 23 Sep 2016 00:33:03 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Katie Dunne <kdunne@mail.ccsf.edu>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Edit struct member
 type for endianness verification
Message-ID: <20160923073302.GA21641@d830.WORKGROUP>
References: <20160922032014.GA31033@katie-Inspiron-5748>
 <20160923064804.GA2338@d830.WORKGROUP>
 <alpine.DEB.2.10.1609230903350.3341@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609230903350.3341@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Sep 23, 2016 at 09:06:18AM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 22 Sep 2016, Alison Schofield wrote:
> 
> > On Wed, Sep 21, 2016 at 08:20:14PM -0700, Katie Dunne wrote:
> > > Fixes warnings found using sparse on
> > > drivers/staging/wlan-ng/p80211conv.c:
> > > warning: cast to restricted __le16
> > > warning: cast to restricted __be16
> > >
> > > Updates the corresponding type in
> > > drivers/staging/wlan-ng/p80211conv.h
> >
> > Hi Katie,
> >
> > I ran sparse on p80211conv.c before the patch, and then again after
> > the patch and can see the sparse errors that the change cleans up.
> > My concern is with the ones it leaves undone and new ones added
> > at line 452.
> >
> > I'm guessing it's best to work this type of problem as a whole, rather
> > than addressing pieces of it.
> 
> I'm not certain that it is necessary to address all instances of an issue,
> if they are disjoint, and if they require different amounts of knowledge.
> Then nothing would happen until the most expert person comes across the
> issue.  And anyway the tool will continue to find the other
> occurrences.  But adding new issues is not good.
> 
> julia

Not sure these could be called disjoint.  They are all about managing the
incoming data - endianess related warnings.  The changes are also in a
header file, so it fans out even further than just the file mentioned above.  
alisons

> 
> 
> >
> > I see Greg is maintainer, so look some more at those warnings and
> > wait and see what he says.
> >
> > alisons
> >
> >
> > >
> > > Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> > > ---
> > >  drivers/staging/wlan-ng/p80211conv.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/wlan-ng/p80211conv.h b/drivers/staging/wlan-ng/p80211conv.h
> > > index 8c10357..d8fda07 100644
> > > --- a/drivers/staging/wlan-ng/p80211conv.h
> > > +++ b/drivers/staging/wlan-ng/p80211conv.h
> > > @@ -130,7 +130,7 @@ struct p80211_metawep {
> > >  struct wlan_ethhdr {
> > >  	u8 daddr[ETH_ALEN];
> > >  	u8 saddr[ETH_ALEN];
> > > -	u16 type;
> > > +	__be16 type;
> > >  } __packed;
> > >
> > >  /* local llc header type */
> > > @@ -143,7 +143,7 @@ struct wlan_llc {
> > >  /* local snap header type */
> > >  struct wlan_snap {
> > >  	u8 oui[WLAN_IEEE_OUI_LEN];
> > > -	u16 type;
> > > +	__le16 type;
> > >  } __packed;
> > >
> > >  /* Circular include trick */
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922032014.GA31033%40katie-Inspiron-5748.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160923064804.GA2338%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.
> >

