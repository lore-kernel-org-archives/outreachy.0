X-GM-THRID: 6389998249315401728
X-Received: by 10.31.167.205 with SMTP id q196mr8884707vke.37.1487833972600;
        Wed, 22 Feb 2017 23:12:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3224343otb.26.gmail; Wed, 22 Feb
 2017 23:12:52 -0800 (PST)
X-Received: by 10.157.12.249 with SMTP id o54mr12791938otd.150.1487833972069;
        Wed, 22 Feb 2017 23:12:52 -0800 (PST)
Received: by 10.202.4.147 with SMTP id 141msoie;
        Wed, 22 Feb 2017 18:01:50 -0800 (PST)
X-Received: by 10.99.64.65 with SMTP id n62mr12500370pga.61.1487815310399;
        Wed, 22 Feb 2017 18:01:50 -0800 (PST)
Return-Path: <me@tobin.cc>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id u30si342994ywh.7.2017.02.22.18.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 18:01:50 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id E0E3320748;
	Wed, 22 Feb 2017 21:01:49 -0500 (EST)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Wed, 22 Feb 2017 21:01:49 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=6UnZEHy7FKGTnzcdJ2QAJpRavDo=; b=I0q1Z/
	2658F+pU93XTo48wE9a9duNo3T9SWauPwj9LB987PVMAuRFmWS0VTzL/jmssfvgZ
	uL+gFAsPovVtUMnjUzCt8ODFt/dISCFDvI9xNCKk/j/9YcHhBAZ6Xit24ZH+UwTR
	4f3sUkbA9d3BU6qdF2LT9x5jcD8LLo4rDRt4M=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=6UnZEHy7FKGTnz
	cdJ2QAJpRavDo=; b=pr5yNVb3FrRlDzIRbb+brEGd5rS2lj1/zHkvnu1SUvE3mn
	GogpG+TbMXfVzxCgUg2v9sg0lQdylX6J1gADTWqBMcc8jnMrAw/3regnEMfThqFd
	QFDFcdC8jC0O86V7/yeLF96j80sxKQCuhislFC9AfIbBEIDzrWXQ3RDmRfcCI=
X-ME-Sender: <xms:jUKuWKCv-xVu8ORElPRYZ2pT9XvX0Gic-JM2N9P51t4N3KvvtoMxgQ>
X-Sasl-enc: I1bgJxx1sKWx4hWYpeYNobAmE5OOMbagg2/qFRiwDkFM 1487815309
Received: from eros (124-169-107-61.dyn.iinet.net.au [124.169.107.61])
	by mail.messagingengine.com (Postfix) with ESMTPA id C51B72443E;
	Wed, 22 Feb 2017 21:01:47 -0500 (EST)
Date: Thu, 23 Feb 2017 13:01:45 +1100
From: "Tobin C. Harding" <me@tobin.cc>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: xgifb: function prototype argument should
 also have an identifier name
Message-ID: <20170223020145.GA10075@eros>
References: <20170222181639.GA30190@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170222181639.GA30190@arushi-HP-Pavilion-Notebook>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

Please use the imperative mood in the subject line i.e the short form
of git commit log.

A couple of example Subjects::

    Subject: [PATCH 2/5] ext2: improve scalability of bitmap searching
    Subject: [PATCH v2 01/27] x86: fix eflags tracking

Awesome work on you patches!

thanks,
Tobin.

