X-GM-THRID: 6241048565443985408
X-Received: by 10.107.2.19 with SMTP id 19mr1697982ioc.23.1453961786062;
        Wed, 27 Jan 2016 22:16:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.135 with SMTP id l129ls668228iol.105.gmail; Wed, 27 Jan
 2016 22:16:25 -0800 (PST)
X-Received: by 10.50.18.100 with SMTP id v4mr1034240igd.1.1453961785563;
        Wed, 27 Jan 2016 22:16:25 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ui7si1334381pab.0.2016.01.27.22.16.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2016 22:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x125so18314148pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Jan 2016 22:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YnB9cjcc1zcrPvelJkkQZieX9nL5K2CwR+dfPDQ/h9M=;
        b=C2CNTmMKootNl82q+hyCme3/5JmGoHiNLADB6ptyJh5yo/dsJ9Bp9NLoMAHENCPYs0
         QqWyM6nO7ZmJVz1tb9L6vYH+PX9N3N91+rsXpmLApnQeTgUmeacEKGPTuv8JTU3ySiBv
         1ztZmL4Sr/XALsm/kV9wxYV9naxglD21h6y+Uo/7yJK8fZEoHaMtir70qpmqIkPt0H4f
         hNKpOG/KvnFyvwkjuRpFBxmYqn1pF0espmW8hBsgttgeerONV/CNo5YRCMMVEPrcjJ1v
         6Wqum1+ohj0Q0XQGjoj4C/uBAUcqu3Tw5YRbtsYCG8zoBi6Tmbfi491qt7W22HNzDiMr
         yTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=YnB9cjcc1zcrPvelJkkQZieX9nL5K2CwR+dfPDQ/h9M=;
        b=mQ9AKclH8ryKXzWR7EDwDGppMDwpxUWnaBtBw22tsqiYDKlTCkQJUIAL/RSOsoY4nS
         vze3y4TaIgPE2SUMBS5sAYpTKjMgRTdiQRdoaGaVPhtbP3M/N1FDrnD6zLO5kI/Si0xJ
         qbDITP9CZS88LOWCAHRGd/o99BtQdnlOQv25s1Rvvja1vQXa+/+YLImKSyJEUmZD9YmY
         nI9B6pjKi/6AGad4BQIq+mZz7JxrrhGvC9DfqGDKfF1GFIMuUSv6RzD0y5aknh9zKYah
         s1YuknuZX+RoU0KrFXpHWilk9GBn16i6foP/YLPiSqM2HdP2CLjQof9lC4wIqNHQryj6
         vStQ==
X-Gm-Message-State: AG10YOSadKapqomWv0MBJ66BnxXyTh3U46D891o1/FRZVeEloUz/5le02fvA4ubVD2vBIw==
X-Received: by 10.98.65.148 with SMTP id g20mr2066574pfd.21.1453961785406;
        Wed, 27 Jan 2016 22:16:25 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.228.136])
        by smtp.gmail.com with ESMTPSA id s19sm13145023pfs.62.2016.01.27.22.16.23
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 27 Jan 2016 22:16:24 -0800 (PST)
Date: Thu, 28 Jan 2016 11:46:15 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: round 12
Message-ID: <20160128061615.GA9938@sudip-pc>
References: <alpine.DEB.2.10.1601180953180.2520@hadrien>
 <54734a8f-1a51-4ef2-af5a-05219aaf800e@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54734a8f-1a51-4ef2-af5a-05219aaf800e@googlegroups.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Jan 19, 2016 at 02:55:55AM -0800, Bhumika Goyal wrote:
> Hey Julia, my name is Bhumika and I am very excited to be a part of 
> Outreachy for the coming round.I started submitting patches a few days ago 
> but I haven't received any acceptance yet. I have sent them to the 
> maintainers and the mailing lists as well. Should I send them again or 
> should I wait for a few days?

Looks like your bluetooth patch has been applied. And about your staging
patches, please wait for 1 - 2 weeks more.

And just few things before the round starts.
1) do not top post.
2) do not send mime-formatted mails.

regards
sudip

