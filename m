X-GM-THRID: 6528044448013615104
X-Received: by 10.28.141.4 with SMTP id p4mr340475wmd.15.1519932825990;
        Thu, 01 Mar 2018 11:33:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.10 with SMTP id i10ls1572089wmf.3.canary-gmail; Thu, 01
 Mar 2018 11:33:44 -0800 (PST)
X-Google-Smtp-Source: AG47ELu7x4YDutAo0HnAclWChzsjppfz6dMgIPDTw7aa2Xs5UyKLIGKtVySWmtc4kk5DVn1U8zKS
X-Received: by 10.28.105.80 with SMTP id e77mr342516wmc.26.1519932824327;
        Thu, 01 Mar 2018 11:33:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519932824; cv=none;
        d=google.com; s=arc-20160816;
        b=S0S6bzYXKV+sjWt98V5jUQLDheBAF+7jKGYBGo08Li2G4by+uLpNRcBQCq/VETnDR4
         ylB2F8Y5F89UjwGvxMX6YGLs/fFT1hTCBjTleHDOokUuxprhLGYHGkvU968cXE4KsiUk
         fWt2O/JPorQTXYWQ30J837iaORD4yc25NOqkIB9t6kaeX2xuKscVw7Y+g23ljjhNldoA
         tQAgZd1MFmaz70Vp7nPsjSrVFKgAgN3JkP9YNRGFg4z6+EZuoKayHB4qdu0QdANVQ3Z9
         li9J8qj3UFzGn40v+R/WmaIPFr9gQJHFCWh+VQ4p+Zyc/4W0o4e4Ht/ygAMQds+uZ/vT
         1AZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=rHnknWB0fJ+FkRPG8pn9ku92v8hybDKLfJMNwQH58uc=;
        b=mFs4nLBXsxAdaq58MZuz3AuM6YOQMsIsQ74bPrMHUHj6Wf9UtIG58wVjGL4eE6SZtK
         ttbLTUSPTGFAcyXu7/2aXZISBO3W2jzcDOCQrQ19Orrtea0sAGHPwrUbFj+z4QDy2JNf
         4Rf1yFtbe9NKhpk50taT05ciGQFZGNYQOq5U7GfUkukVR1ECgUX5GKn7CDJAunLvdLGo
         5QqX3JHoFqz8BF9yl1fsDZLpPQCKquy7ru9lyb6oocm7FP5eRVdhyrCRPSxPRh6pg4Fl
         f3TalJVe+RDdmBWwKycQbAeXAtQcZ4Xd/iqX98XUY/Kjt6+CTTn3anl24hhiA+eLYfRl
         Fetw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g206si294159wme.2.2018.03.01.11.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:33:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 79D05F71;
	Thu,  1 Mar 2018 19:33:42 +0000 (UTC)
Date: Thu, 1 Mar 2018 20:33:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com,
	rjui@broadcom.com, sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: bcm2835-camera: Add blank line
Message-ID: <20180301193342.GA12402@kroah.com>
References: <20180301184207.GA15880@kroah.com>
 <1519931748-3066-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519931748-3066-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Mar 02, 2018 at 12:45:48AM +0530, Nishka Dasgupta wrote:
> Checkpatch suggested two warnings for this file in consecutive lines: "static VCHI_CONNECTION_T *vchi_connection;" and "static VCHI_INSTANCE_T vchi_instance;". Both warnings said to add a blank line after the declaration. If checkpatch was wrong, is it okay if I submit a version 2 with a blank line only after "vchi_instance" and not below "*vchi_connection" (effectively undoing one of my commits)?


First off, I have no context as to what you are responding to here,
please always quote the email you are responding to properly.  Reviewers
deal with hundreds of emails a day, and not having context for what you
say doesn't really work :(

Also, properly wrap your email lines at 72 columns, your email client
should do this for you, right?

Please respond to the email with the correct context and I will be glad
to respond.  Right now, I have no idea what you are referring to.

thanks,

greg k-h

