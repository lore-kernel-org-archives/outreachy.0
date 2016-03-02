X-GM-THRID: 6256042901730492416
X-Received: by 10.182.65.135 with SMTP id x7mr23412213obs.13.1456944577846;
        Wed, 02 Mar 2016 10:49:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.200 with SMTP id d8ls595231igx.35.gmail; Wed, 02 Mar
 2016 10:49:37 -0800 (PST)
X-Received: by 10.107.153.197 with SMTP id b188mr4383731ioe.27.1456944577510;
        Wed, 02 Mar 2016 10:49:37 -0800 (PST)
Return-Path: <bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id g136si2149263ywb.5.2016.03.02.10.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:49:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=W4J7+S0u3n8BOSSk5NFJ2B3TaT4=;
 b=EdZMl0EGPcj0Zn/2M3Tmv6PKuj0srVIV93/wNgwAXKx55Znv2uIMysugeIMGqC2mAIJ7YDPjgooC
   B165VzplBnzKtlbb5y1ixX0srRphSUn8inCzevsoQ/t1ooKlIF0+uLT90gRwmERp6qSIWzJeI+0R
   1Fl3LJ/aHuJNHuy4GBE=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqsqs222rtk1 for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:49:37 +0000 (envelope-from <bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944577; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=iCLcOC2aWm8x9z+ad1vJH559DywTWo2MBxaA8SiKr50=; 
 b=P5wYJw8c+AheRsdeJz7/+QZ0In17s7CknacAR3BYxM506hKUO65OKaRk7RRmD/M5URyOTW
 bOXhSGriEF9Q3CQC2pe/5Td/2oFlWgriNrs3i0/CSOcT5dDKuMGONwK7OV4nHPBErfKOq2xI
 Actxqhtp8oMtwgeyWQPJaedADKPyI=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Use list_for_each_entry_safe
Return-Path: <bounce-md_30481620.56d735c1.v1-a7e978686bed43a3b36c8f5ba96cc009@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id a7e978686bed43a3b36c8f5ba96cc009; Wed, 02 Mar 2016 18:49:37 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032321.GA29423@kroah.com>
References: <20160228133103.GA18517@Karyakshetra>
In-Reply-To: <20160228133103.GA18517@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.a7e978686bed43a3b36c8f5ba96cc009
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:49:37 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 07:01:03PM +0530, Bhaktipriya Shridhar wrote:
> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
> 
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
> 
> This was done with Coccinelle.

You sent 4 patches all with the same subject again :(

