X-GM-THRID: 6746657594163593216
X-Received: by 2002:aca:abc4:: with SMTP id u187mr13925843oie.178.1570833147650;
        Fri, 11 Oct 2019 15:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c743:: with SMTP id x64ls1730182oif.10.gmail; Fri, 11
 Oct 2019 15:32:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvbRVKGIRXYfMpaNEnQf0KhwYAp/0K8SPYy0nkv4yUanVufbaQG2rGQGpTCToiZciVtfR4
X-Received: by 2002:aca:5c06:: with SMTP id q6mr14618896oib.175.1570833146779;
        Fri, 11 Oct 2019 15:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570833146; cv=none;
        d=google.com; s=arc-20160816;
        b=JvkXZ9JwbXILpBCE8jot8AgyF86ZKNxpCVDiUUDzMJRvoeWvetkiBAMTFTfrT6zhP+
         XF1ANoFE4sSVR5FsgKF8OPfwfIJjOUajp5aH3qmzpr30f0oXZi6yGubYLuxTASGHdDTJ
         ysqe1d/xDwuvzvS+qFl1Z4Lv9eB08PY8vVa02rt0CJLvH5hQhLEfdd8uO2W0YOGTdSL9
         ikLbJl67XtFfVZMYNYzPIXDYmd6J0PPlgxC4MNIQYLIVTZwFBanrH04OYVndGPXKiGjq
         SRC47hDq9Ynp7pgeIqu7/OSwmE1WSlbKZ/yswg44qBuyHz3Od8zz33m6JSsVrXLVaB25
         Xrbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=7gGNAsJ1Q++hKlWb2r1TUd24UqQBL+bFHb55lLqXP0s=;
        b=Cusbz20KlIz/VaWqQ8LFVElUackbERjCXl+6eQ1Vc+HgFd6RyD7unxeu2pFtBXfTAl
         cXc8x6denXCvjgW5TUHU4BD9q/mrxKequ4phELSXDxrdQUJacWvSovCbD7mU5VmwV0SP
         c0kq4SZv67QgmYLlSD4MyW8n87Kr3fqnRiPUnAe5kyq17VxRuSAsu+dGbYwH/j34uYZ9
         yL+7iA4SnZBTiI2UGt5fbUKIIP5dfifIyd57VFcHFJM5ZPMdhHVP2sUDrVvWNulmGbFm
         EegfbUfkdTmsVqgJD0jTczzomiMpPoHbhRx303VenvXqA9ERFmGLwIu/L9cRt1NbQkAk
         nHiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.236 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0236.hostedemail.com. [216.40.44.236])
        by gmr-mx.google.com with ESMTPS id c67si116990oig.1.2019.10.11.15.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 15:32:26 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.236 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.236;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.236 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id E131418016C6C;
	Fri, 11 Oct 2019 22:32:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:4321:4605:5007:6742:7903:8660:10004:10400:10471:11026:11232:11473:11657:11658:11914:12043:12295:12297:12438:12740:12760:12895:13069:13148:13160:13229:13230:13255:13311:13357:13439:14096:14097:14659:14721:21080:21627:21774:21796:21939:30012:30029:30036:30054:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: owl40_14d93818d4721
X-Filterd-Recvd-Size: 2752
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri, 11 Oct 2019 22:32:23 +0000 (UTC)
Message-ID: <28ed468bc58c0d0e92f459b45d8e43cd3d1458b2.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warnings
 of lines should not end with open parenthesis
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	eric@anholt.net, wahrenst@gmx.net, linux-kernel@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, daniela.mormocea@gmail.com, 
	dave.stevenson@raspberrypi.org, hverkuil-cisco@xs4all.nl, 
	mchehab+samsung@kernel.org, bcm-kernel-feedback-list@broadcom.com, 
	sbranden@broadcom.com, rjui@broadcom.com, f.fainelli@gmail.com
Date: Fri, 11 Oct 2019 15:32:22 -0700
In-Reply-To: <alpine.DEB.2.21.1910112320550.3284@hadrien>
References: <20191011211637.19311-1-jbi.octave@gmail.com>
	 <alpine.DEB.2.21.1910112320550.3284@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2019-10-11 at 23:23 +0200, Julia Lawall wrote:
> On Fri, 11 Oct 2019, Jules Irenge wrote:
> > Fix warning of lines should not end with open parenthesis.
> > Issue detected by checkpatch tool.
[]
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
[]
> > @@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
> >  			if (is_capturing(dev)) {
> >  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> >  					 "Grab another frame");
> > -				vchiq_mmal_port_parameter_set(
> > -					instance,
> > -					dev->capture.camera_port,
> > +			vchiq_mmal_port_parameter_set(instance,
> > +						      dev->capture.camera_port,
> >  					MMAL_PARAMETER_CAPTURE,
> >  					&dev->capture.frame_count,
> >  					sizeof(dev->capture.frame_count));
> 
> You can't reduce the indentation on the function call.  It has to stay
> clearly in the if branch.
> 
> If you adjust the indentation of some of the arguments, you have to do so
> to all of the arguments.
> 
> Similar issues arise below.  There may be no way to make some of the calls
> look nice without a more severe reorganization of the code.

My suggestion would be to shorten the vchiq_mmal_port_parameter_set
function name (29 chars is just too long) and pass dev instead of
dev->instance as the first argument to this function.



