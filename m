X-GM-THRID: 6329987466337976320
X-Received: by 10.237.36.113 with SMTP id s46mr2631486qtc.18.1473870339290;
        Wed, 14 Sep 2016 09:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls1271444otg.44.gmail; Wed, 14 Sep
 2016 09:25:38 -0700 (PDT)
X-Received: by 10.157.16.68 with SMTP id o4mr2579485oto.32.1473870338811;
        Wed, 14 Sep 2016 09:25:38 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c20si1456863pfc.1.2016.09.14.09.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:25:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x244.google.com with SMTP id 128so991121pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qeVd52UF/Uc/DqxZ0mJpsPDCahhjrpiyzXVA6irPx1Y=;
        b=h2mvz2dOuz/cwIZyyAkt9lQyzvYTdMKJD+WikEdDV+v9974ymqsAxxJ+Cx/ZQqMHPr
         lJGQT9A0aKJ6z2uFOtgSD6SXN9+msvyj74KjEz/VT4zLk1J4WI2kwx+poA26fVG4A8sL
         4oKtgEKuPRwNk8BFWrqCTy5fOdfT3TDT9s9yYH+A9M8r3V6pzMIx9SXDeHTwaNYKNccj
         2qWF68Cm8FVrRU259PSElRwUYwnLgfp5NvF5Z7UwY+RZopwIuIFQZtHLtawYiY5FGj42
         IkyByRgSrMAlBuayZ4lyVXBchSaxPbv4QGipNMzUhES6r3gzr5XcSrcnmgH5eNbWvAUM
         dscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qeVd52UF/Uc/DqxZ0mJpsPDCahhjrpiyzXVA6irPx1Y=;
        b=M9SCkkNjCQqN7t55Wugu2eTwiDu8vf3Fqo4E3D4zU1H6TkuZBVCmRL+7yrw6Wz3hrz
         5D9AOD6GMBay3ncnhH2mwvt+Vpg+uBd1FnUV4KxnOOZSaGZnf2M3SYmAaKwAXLgJNd5V
         ywEvBxHFJvDc6SlrEa4JpGB2mY+5hDr7lxegECwGWcmSKMBgk7AOE2ECa4fm1dMb3iF3
         0QoCvKkYDmXDmMwipuhrOcVMIlIbgnBSyvrQqVLXThCqyoPC9Na+stMpsL9EqH+GKuV0
         K8y1opd/dF0l5lLiFa8XmqC3wGZakqd6KdNpkpmlsiyFsqwY0/D2lpA/dePF3t4L64SW
         Hshw==
X-Gm-Message-State: AE9vXwOQq6UZvZn2/L9y+yNVP50YfpeEmCs4laLOE4LiUUYO/dibEmy/kprOqN9J6SefgmSU
X-Received: by 10.98.60.68 with SMTP id j65mr6067623pfa.55.1473870338587;
        Wed, 14 Sep 2016 09:25:38 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id i8sm6656166paw.25.2016.09.14.09.25.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 09:25:37 -0700 (PDT)
Date: Wed, 14 Sep 2016 09:25:36 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
Message-ID: <20160914162536.GA9023@katie-Inspiron-5748>
References: <20160914010414.GA441@katie-Inspiron-5748>
 <20160914051142.GA7205@d830.WORKGROUP>
 <20160914141041.GA2039@katie-Inspiron-5748>
 <CAEnQRZCagb1u5-4tsezMZ1WvnRFUPmigXPBdvRkX9ZPNtcj=Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZCagb1u5-4tsezMZ1WvnRFUPmigXPBdvRkX9ZPNtcj=Qw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 14, 2016 at 05:18:12PM +0300, Daniel Baluta wrote:
> On Wed, Sep 14, 2016 at 5:10 PM, Katie Dunne <kdunne@mail.ccsf.edu> wrote:
> > On Tue, Sep 13, 2016 at 10:11:43PM -0700, Alison Schofield wrote:
> >> On Tue, Sep 13, 2016 at 06:04:14PM -0700, Katie Dunne wrote:
> >> > knaack.h@gmx.de, pmeerw@pmeerw.net
> >> > Bcc:
> >> > Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
> >> > Reply-To:
> >>
> >> Hi Katie,
> >> Something odd happened just above here...with the cc list and subject
> >> repeating.
> >
> > Thanks Alison. Something weird happened with mutt where the subject
> > disappeared so I had type it twice. I will try to figure out what went
> > wrong.
> >
> >> It looks like some of these can be pulled into less lines.  If it fits
> >> within 80 chars, it's fine on one line.  See below.
> >
> > I wasn't sure if I could do this in the same patch, but that makes
> > sense.
> >
> > I will send a v2.
> 
> Hi Katie,
> 
> Just to make sure that everything works fine, it's always a good idea
> to send the email first only to yourself.
> 
> Then if it looks good send it to everybody :). I usually find late problems
> with this approach.

Thanks, Daniel. It looks like the problem was how I was formating the Cc
list in mutt. I sent it only to myself first and it looked correct. But
adding multiple emails addresses incorrectly changed the formatting.

Katie

> 
> thanks,
> daniel.

