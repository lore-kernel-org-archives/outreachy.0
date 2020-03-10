X-GM-THRID: 6802585330019991552
X-Received: by 2002:a25:2d68:: with SMTP id s40mr22426138ybe.424.1583862049147;
        Tue, 10 Mar 2020 10:40:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls1643547ybq.11.gmail; Tue, 10 Mar
 2020 10:40:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vszCkPQwOEzkwqST9mNA+jmoYZVJBZLzc3FHJ/JYNujJ8cZ+yr7Mih1Yr8E6QEOmBPcjPHZ
X-Received: by 2002:a5b:289:: with SMTP id x9mr24372239ybl.332.1583862047691;
        Tue, 10 Mar 2020 10:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583862047; cv=none;
        d=google.com; s=arc-20160816;
        b=jvebyzdLERZFwcZl+YXcRKWNjD2tmdawVjrXXIjcYRio9aQFVyWg0WeNdgt1fTZta4
         AuEeLYWYw83dyEDf37pK6uSMh4Ndgrr6INOQV8xZiRSNLsI2ju+LXfvO4ckRJTG6efkm
         Uw+YtZvEv5xTAKvdEwLO1rKACUqH+DDGF2fG9yGagd8d0KJSGPfhMT2dAK/es5g2/9GR
         lQGI58ZaEAIkv37cTBcAyJlr/khwQOqERwCM/c0xt6G139AJ2NBWZ1AXM97+d8DKoyPs
         3vZJ9keoaylB84vCK2xXp2pu+1BtVNyRUOQqvuAYOLEzc/Or/ShG0JFfRcq/NVgstfFf
         VPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=O0i5NcKl03gWp3sIXqGa/XSDbJU/fl38idc+CVm/59c=;
        b=CLQW2+kw6g+BclsdhAEPLRqBqkc9611ooWBvH+EhzeV6mkbT5TwEVQVteBQJytkRiD
         VGa8Mll5EYzL42olSSNluIE9wAxIVvckUSP5amYNijRUVfN9Ks6QI+/H8HVcBASDIHKz
         bS4jHRJOYKkn/N3TyfTPvEQJ8WVR5JkfyOQm1Wv6OiwmY7IRA2euWsNUmeTA8cNG8iMX
         WydT6lgWNQxA6vPo6FI+b5SsxV6RvrwEn4P07T6ozXsJq4m1ff8n5f8bT4as4YnaAOWG
         TtHDkGgeky5ofCUgSCHKR/gDHqyS7aX9is0i2wBMVwUdiWzGQuRPyZZAAv5xSGThvVAj
         UU3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N1ErZgo3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id x13si1159434ybs.4.2020.03.10.10.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 10:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N1ErZgo3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583862047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O0i5NcKl03gWp3sIXqGa/XSDbJU/fl38idc+CVm/59c=;
	b=N1ErZgo3QAGg5qDjdW+yRTlr84EtEdLpQ4pTeD01sJJ7oxL1dqAEt9ehEWq+3WmmUylKwy
	P4FNXfeFwwGrtfHOpt7eVfITyJIlsnxVkh2CzjnOnaS1UnOnpyybyL+YofSmxhQuk9eF1H
	ypiLGexRkCH3SG1trgwU/5ck1HzRTFI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-KFhZWk86N4SC6u9gYIw4Ug-1; Tue, 10 Mar 2020 13:40:45 -0400
X-MC-Unique: KFhZWk86N4SC6u9gYIw4Ug-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47239107ACC4;
	Tue, 10 Mar 2020 17:40:44 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D0DB10013A1;
	Tue, 10 Mar 2020 17:40:39 +0000 (UTC)
Date: Tue, 10 Mar 2020 18:40:33 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: jerome.pouiller@silabs.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310184033.007d0230@elisabeth>
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Kaaira,

On Tue, 10 Mar 2020 19:55:03 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> The patchset removes a few unecessary spaces in some files in the

"unnecessary"

> driver. It also removes an unused structure and uneccessary variable

"unnecessary" :)

> declaration. It also assigns a bool instaed of a digit to a boolean

"instead"

> variable.
> 
> Kaaira Gupta (6):
>   staging: wfx: data_rx.c: remove space after cast
>   staging: wfx: change 1 to bool
>   staging: wfx: dat_tx.c: remove space after a cast
>   staging: wfx: data_tx.h: remove space after cast
>   staging: wfx: remove variable declaration
>   staging: wfx: remove unused structure

And as you're posting this series for the second time, you should
indicate this with v2 (check out the "--subject-prefix" option of git
format-patch), and indicate the change history for these patches -- see
other recent discussions on this list for examples of how it's done.

I would also suggest that you give reviewers the time to answer your
questions, before re-posting. You had a question on 2/7, and I
understand it's getting late in your timezone... but you asked it just
three hours ago.

-- 
Stefano


