X-GM-THRID: 6200357690588266496
X-Received: by 10.129.125.130 with SMTP id y124mr15959150ywc.14.1443854380478;
        Fri, 02 Oct 2015 23:39:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.97 with SMTP id fn1ls995824obb.29.gmail; Fri, 02 Oct
 2015 23:39:40 -0700 (PDT)
X-Received: by 10.182.196.98 with SMTP id il2mr16398191obc.40.1443854380142;
        Fri, 02 Oct 2015 23:39:40 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si2056159pac.2.2015.10.02.23.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 23:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so125933835pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 23:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Di89kaApQfdUiGT+kE670pxkluyRPwySpPEfi5Ycrwk=;
        b=UABOzip2aY4pvkcr43agl5IF13wX/F7SmxnQ/W8pNFCgONTY0STEgYV8pTV08rNSXE
         ilAqt+nX6+Evkzw1b3vMoYeT6uOxd1f8LNM151A0MXzlio72HsshPCaVSHagu8kn6nzI
         Af6BqMSBhBylWH96qx2dk3zQgybg3DLXXfZoXAsJ0cIZdwDghY35fTX/33DSZKjxP+8P
         b7guhCa9CkjFlIOAIvWwMuJlexrY4xrJoK/a39Yexvg8hyB3eAvpGRF+mBL5ovWWjsdo
         A0J/lglyKtdn3lvOl76AA2Iq1HWznQz00ogsVKlRbcthaQtr2Q77d/+BM+H+aj4xnN0t
         RZxg==
X-Received: by 10.66.228.233 with SMTP id sl9mr25419202pac.139.1443854379931;
        Fri, 02 Oct 2015 23:39:39 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.175.61.48])
        by smtp.gmail.com with ESMTPSA id zk9sm15563679pac.7.2015.10.02.23.39.37
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 23:39:39 -0700 (PDT)
Date: Sat, 3 Oct 2015 12:09:33 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: olpc_dcon: Replace
 timespec with ktime_t
Message-ID: <20151003063933.GE4428@sudip-pc>
References: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com>
 <20151003055909.GC4428@sudip-pc>
 <CAL7P5jKVpNLPA318dgyw=wnA0kBxaXkVjgBsRU+-cV2dq00K2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jKVpNLPA318dgyw=wnA0kBxaXkVjgBsRU+-cV2dq00K2Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 03, 2015 at 08:05:16AM +0200, Ksenija Stanojević wrote:
> Hi Sudip,
> 
> On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
> >> Struct timespec will overflow in year 2038, here it will not cause an
> >> overflow because it is used with timespec_sub, but still has to be
> >> removed as part of y2038 changes. Replace it with ktime_t. Also use
> >> monotonic instead of real-time by replacing functions getnstimeofday
> >> with ktime_get.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> >> ---
> >> Changes in v4:
> >>       -fix checkpatch.pl errors/warnings introduced by changes made
> > You missed one more checkpatch warning.
> >>        in v3.
> > <snip>
> >> +             delta_t = ktime_sub(now, dcon->load_time);
> >> +             if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20) {
> >>                       break;
> >>               }
> > braces are not required for single statement if block.
> 
> I didn't know whether snould I change that or not, because that change is maybe
> for another  patch?
> Should I fix it  and resend?
Not required. Just pointed that out. Resend if Greg asks for it.

regards
sudip

