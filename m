X-GM-THRID: 6472784237919469568
X-Received: by 10.129.125.193 with SMTP id y184mr6966322ywc.191.1507128029064;
        Wed, 04 Oct 2017 07:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.62.37 with SMTP id l37ls1074250ywa.36.gmail; Wed, 04 Oct
 2017 07:40:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA+Qm5+oiPCAAg1ksWCUBsKbIDw4frW/Tzk6DhPqoOc9QFmsTr1+TIBn7uI+ZtSn/eoYoaK
X-Received: by 10.13.241.196 with SMTP id a187mr34844232ywf.128.1507128028187;
        Wed, 04 Oct 2017 07:40:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507128028; cv=none;
        d=google.com; s=arc-20160816;
        b=yAjweGk4P2bgYVwm4mTviRX6Qt1qUNMGxdj8pNWGmQK4nZjZG3jCTvAsIPJNNSt7eU
         WIZv5YEQrM3hJU/+iD7AR/d261duuGzMk4CyJN14hsF62KbGeJbUo+teSKP7MnwR3og7
         M3ulhGsReAng7gM8YQ9LhALB0zY+LIrX9PPFXVZjRNR4MCAfzdr9eXNsloZp09uIgpa7
         /AhKG6jtdXJExxyMOKhaKcPYluPj7lk6v9mA3sWrLHoM/a33dReYQ4PViJD69OH7ow9E
         MAShrXS5iHAyRldzVYZLVwZHgjDmpcyZ4rzZoOOzpccPWBzmUHW2HfSzGM18ykyPFULi
         LIyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=59z9r9n6L97bX1gQQgHzUFxCJFQ2N5V0W39aKaPrvsI=;
        b=t0QZrS03vtj8F4iXRwVA+uHk50K4sW4oAqNBxXlT9Nu/5SSoGwmI/91R/AuMeBKsn9
         hv6bKQ4ovgP9T+xKqxPV8Dcs+q/tR42UlJrO53rxYJhLDkPrj+clY2KoWM3ziB+CrE+l
         +NoBDZ2WFzod0jFf0F96fApRcYsR2kvLoiCv7XP257SyS1W8KdZI5Ddd/kj336/zVbsv
         uKyhan4WvpHY1aVF43beTPxKZCAZ19FGhltuXfVJpvTEYBKZR8tK6zdj3karlL0Px23h
         blJB5iDft9rqy3/U5c6Zg3dldcCoNmwsj896i8gZ2JUJJ8SWwkzK8uU3dbSYai4J+c8U
         Y77g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id w65si842798ywg.18.2017.10.04.07.40.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 07:40:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v94EeO2s002432
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 14:40:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v94EeNnH018590
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 14:40:23 GMT
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v94EeM3D022318;
	Wed, 4 Oct 2017 14:40:22 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 04 Oct 2017 07:40:22 -0700
Date: Wed, 4 Oct 2017 17:40:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
        Srishti Sharma <srishtishar@gmail.com>, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
Message-ID: <20171004144012.jciztelhwjdyzpwg@mwanda>
References: <1507062512-9145-1-git-send-email-srishtishar@gmail.com>
 <20171004112103.cvu5ipkudfpz2adc@mwanda>
 <alpine.DEB.2.20.1710041537060.2815@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710041537060.2815@hadrien>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Wed, Oct 04, 2017 at 03:39:30PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 4 Oct 2017, Dan Carpenter wrote:
> 
> > On Wed, Oct 04, 2017 at 01:58:32AM +0530, Srishti Sharma wrote:
> > > Use list_for_each_entry_safe when the list elements may get deleted
> > > during traversal.
> >
> > This patch is fine as a cleanup but none of these are actually buggy.
> 
> I'm not sure what you are getting at with the comment.  The commit doesn't
> say that they were buggy.  Perhaps the commit message could have been more
> verbose, like "Use list operators on list_head values.
> List_for_each_entry_safe is needed because the list elements get deleted
                           ^^^^^^^^^

It is not *needed*, the original code works fine.  The problem with the
original code, is that it's ugly as sin.

> during the traversal"?

The changelog needs to say *why* we're applying the patch.  At first I
thought it was going to fix a use after free.  What I would prefer in
the changelog is something like:  "This patch is a cleanup and doesn't
change runtime behavior.  It changes an open coded list traversal to
use list_for_each_entry_safe."

regards,
dan carpenter



