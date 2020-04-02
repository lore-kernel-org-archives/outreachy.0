X-GM-THRID: 6810919292495724544
X-Received: by 2002:a25:840e:: with SMTP id u14mr3971889ybk.91.1585818197304;
        Thu, 02 Apr 2020 02:03:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6c6:: with SMTP id m6ls969577ybt.9.gmail; Thu, 02
 Apr 2020 02:03:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypJSYYYOrGMocxs8i5hl8kj5RB7l2lvCNSGEMD7zyOp67nkMEOIcK10Qn6Dlz1yTzgYAjDY5
X-Received: by 2002:a5b:303:: with SMTP id j3mr3972768ybp.118.1585818196074;
        Thu, 02 Apr 2020 02:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585818196; cv=none;
        d=google.com; s=arc-20160816;
        b=yKckY+vggEVyLfwbCZWEb90p1AVtqyHbDLT69U960X367ZyPSJ4IfUjkmiqEe4Uhed
         29Fb6ukpiZV26co9IyfKzTlfM1tpjQfNjqTIgKIW24pD5kil5IWW1UISm03FV5N3A0YF
         yeUdwNGtz9W5t5cGOWvQ8gzs2ZGfHGBS8x/Q6OJZQGIzkp2G7FM3WTHyFYYjvFR1O42A
         oQYn+5rjWn9DtVNAmmriaY7wCTXeq99d15n1uYZ/YE97NYqN891YwBHTQgr8zX9rUz+m
         +G/bpn8PkGyv6zTZylKZ23qge9HIGn8KAxUpEufIajk+I8ewcYU9zqEv363qU+2exCCP
         KIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=fXkQdmJMrG5Ame1xQ3rEfSlsRPcLGDH3L6dsjpvrDkI=;
        b=i8Lv2HJfoSrdua8w36x0RmPvyK1R3xBKRzq/sAxN+M+FSlfYhE9HBA2C1gHa2yWxQW
         a99z6e7y9IjRLgjRDhVxGjWMjRZhSllFAUBfyjzsmvkFUKYgMM+OYEMq9JO+L74zIrJA
         xVPJOuGrvrQzun/RY6/NEzznrgRZOSULnF0peadYv06DYInBSeUPvXLvneYzQzTrVKcx
         P8ldbrhTCCWEbjUcpb/XB7iaLjSh43LgjSnJYZqc1NgTv5eCguyerxuvSA7eM7+5oENZ
         jn71KDh/0IVf/3HJhV69kbmzs9JvXrqrHDEY3U1VjDFr5qtP/R0g5aLsrpxKleUsSpc5
         PBzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uYL/kWN3";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s10si577791ybk.0.2020.04.02.02.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uYL/kWN3";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l14so1572555pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 02:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=fXkQdmJMrG5Ame1xQ3rEfSlsRPcLGDH3L6dsjpvrDkI=;
        b=uYL/kWN3gcc5C0M1n9mITqemvnKLbiLfiQD5dw8NYYjE7CGUq4x988BhUfdogTyQNz
         /QhHFFlTCWeKqfidBvSAktaTLZiZ0StxxgoLM4sPz7T4V4xrXXODV4fVmKqt2UMkn08i
         KlVHWCyPlT/DE77AwiWUjEMO7S///sGLcUMgiTtknIOfVREjHKzhca76Ytu3W5ra9mCg
         lrVQBo638eg/P0kZWGJjZ14MvrB5IVwCEWROcDALAFXsQ1YH3R+qsHz1qEfwPWwn5zg5
         VIvi0PAhfeRFU8/23iJrN5u6Nnv19tKXlAsWM2YNMTR+MC+j87Bbn9OzDWEfxQPU7+HB
         +V2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=fXkQdmJMrG5Ame1xQ3rEfSlsRPcLGDH3L6dsjpvrDkI=;
        b=QoRNzzIWL11ZWjEDBKML0cc4V3F2nFicyAnwWP7+R+TMfBPB2jSUndhQr5yoCpglF5
         ZkvVQbOJhpqChaf79nvyMoTsxF206C2j1zvNrb+fB1yM3VR2p+ZOTkOhxJkGP0trSZUj
         f274WKPPAv6lgtjPEJ3tUvonjwkKEm9tjIq3AvPJdULetCf7DyNPbFM63W3i7QEOHmcr
         WrDGOSNaNcqloeIL72EJbexzOXZ+bb/rkCL4ZcWTEJ1n56x5R/wpmperX/3dLSS0s5bu
         mTA9MvAo0V987HXDlI1D9Vqb95RPb2bBYPxjYBTaNm0FIbNVUb/g9QjBenJX/gZEYSo3
         sEIA==
X-Gm-Message-State: AGi0PuZDn0EShP5/QVPtNRaNl6f6dKNymKwVUu6qs/OZiWofRskzsM4l
	w9CYARIY6ypO/r5fcPa9U0c=
X-Received: by 2002:a62:cf84:: with SMTP id b126mr2159322pfg.316.1585818195330;
        Thu, 02 Apr 2020 02:03:15 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id g4sm3292961pfb.169.2020.04.02.02.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 02:03:14 -0700 (PDT)
Message-ID: <c8bd09741e0ec90507a034635d5e9e450e9a53b4.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix
 parenthesis alignment
From: John Wyatt <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Thu, 02 Apr 2020 02:03:09 -0700
In-Reply-To: <alpine.DEB.2.21.2004021056580.3130@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
	  <alpine.DEB.2.21.2004020910570.3014@hadrien>
	 <f8b3b9bb6544fb093b4c51b9626bfe8692e17b4c.camel@gmail.com>
	 <alpine.DEB.2.21.2004021056580.3130@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 10:57 +0200, Julia Lawall wrote:
> 
> On Thu, 2 Apr 2020, John Wyatt wrote:
> 
> > On Thu, 2020-04-02 at 09:11 +0200, Julia Lawall wrote:
> > > On Wed, 1 Apr 2020, John B. Wyatt IV wrote:
> > > 
> > > > Fix 2 parenthesis alignment issues.
> > > 
> > > Please try to find a way to describe what you have done that
> > > doesn't
> > > involve the word "Fix".  What have you done and why?
> > > 
> > 
> > Understood.
> > 
> > How about:
> > 
> > Move spacing on function arguments to to comply with kernel style
> > guide
> > on parenthesis alignment.
> 
> It's better (but drop the second "to" :).

And I am going to bed. :)

> 
> Obviously in this case it's not a big deal, but it's better to get
> out of
> the habit of just saying "fix".

Understood, what about the title? Keep 'Fix'. or use 'Move'. or use
'Rearrange'?


