X-GM-THRID: 6806789560169660416
X-Received: by 2002:a05:6638:3a4:: with SMTP id z4mr5024652jap.141.1584889878533;
        Sun, 22 Mar 2020 08:11:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:79c7:: with SMTP id u190ls2695299ilc.10.gmail; Sun, 22
 Mar 2020 08:11:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtYULimR3OvBRHqSWtMZ0Jc3ej9hPxRoGLt8hRY17sZeHzKmrVqKe+usryKZWVf4atYVSI3
X-Received: by 2002:a92:3d42:: with SMTP id k63mr16573818ila.219.1584889876765;
        Sun, 22 Mar 2020 08:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584889876; cv=none;
        d=google.com; s=arc-20160816;
        b=x0IQ+TN6qPT1Dsl1YCF38U8N2zAQrG4WF4E8GM02lpzEF4dLT+ddJtiTEoajSfKNzV
         mtfQChFS0vFqa1ZyzSlk+sKW5qwdHrqOfzkxT90lgmifBOPDW0JbLa7DNnjBlLhH8Ffc
         OZKY3Kci2aHblIQEpYeFKm/3LzXl52dTrrvM8LdCX3/cZyhkV6r3xScDNL29NG/9R0hz
         CtgbrYJ9LkkJpggfOLvIWjpFgJnTFm8yf1LvBS/6tC3sd6BdeRjYZT6OU241RQXoNxEE
         Oym342LfRJ7ww5azEMqqO5MYOMc+EWwkfeITUMt8Ml9/4qzB0xbX5JGChpBY/FC7+gVz
         KjLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Nc91eu0k70tqYlwgZ/RXBB28QqiUTANWAUI0rLVhm4k=;
        b=Q9jcJOEl9yHepKXl1RxQjpBqykcnRjJbjR1kmTYFAQn1s8quYcd0lCxhAo31IMlR2C
         Le42p3F+wAgYZ4aycpJ3SDu9V27qK7sDLlx5nUxPL+krWG4SekUsxY2H9lNY2t1V5PTS
         wF1GNBK87aB49upwMTXM7YvvnPvtkT0y3UPE/7keCnG58tlJYCvlDqg22sCQqjgyJmS7
         oA2UTYAXx8R5HOCQGWVSea0yLxuerQKf8UUXD4HJahDdRi9fZVU/brMwg7JPFIyczbTr
         l5r2sLHrO5qBRmLhVK+ZEZe5L8pXlBWD13gRoa+sk5SspMnKEkh2IKNJDOPNs9t3lBLN
         +H9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.121 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com. [216.40.44.121])
        by gmr-mx.google.com with ESMTPS id u6si885780ili.3.2020.03.22.08.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 08:11:16 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.121 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.121;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.121 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id EEC47181D2FE4;
	Sun, 22 Mar 2020 15:11:15 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:5007:6691:7903:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14096:14097:14181:14659:21080:21627:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: talk44_7f4b0ad682943
X-Filterd-Recvd-Size: 1813
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sun, 22 Mar 2020 15:11:14 +0000 (UTC)
Message-ID: <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Shreeya Patel
	 <shreeya.patel23498@gmail.com>
Cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sun, 22 Mar 2020 08:09:26 -0700
In-Reply-To: <20200322112744.GC75383@kroah.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
	 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
	 <20200322112744.GC75383@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:
> On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:
> > Add space around operators for improving the code
> > readability.
> > Reported by checkpatch.pl
> > 
> > git diff -w shows no difference.
> > diff of the .o files before and after the changes shows no difference.
> 
> There is no need to have these two lines on every changelog comment in
> this series :(

In my opinion, there's no need for a series here.

Whitespace only changes _should_ be done all at once.

Whitespace changes _could_ have changed string constants.

So noting that the patch in only whitespace and that
there isn't a difference in object files is useful as
it shows any change has been compiled and tested.



