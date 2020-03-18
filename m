X-GM-THRID: 6805399652543758336
X-Received: by 2002:a63:a35c:: with SMTP id v28mr30276pgn.251.1584571609481;
        Wed, 18 Mar 2020 15:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls97399pjo.0.gmail; Wed, 18
 Mar 2020 15:46:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtUmaqn5LNB542PxFrvQqTcquiKIExKRWh0B0H7711kUpzSlBv4fcxB7AhwAXwCoVPmn0fD
X-Received: by 2002:a17:90a:1946:: with SMTP id 6mr536447pjh.42.1584571607756;
        Wed, 18 Mar 2020 15:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584571607; cv=none;
        d=google.com; s=arc-20160816;
        b=GbxlQJfRnJoqeiCLC4TyaPwxD+fZ//l3P2ghD/h+vJfY9jQeRoxUJO1hcmw6qldUeQ
         VDRLeFoyZ3npTRQgwHY4ZZjwHE7sQfc4+HRpvh5hBGA01h0D7Ft/HTAzCFjdUCwdVv/A
         +ALkOlNf3aV28TtopUSNUtjEMd7L3eAN//m+BVO6y93LINUsTK+PLiqdkLYKjncATkE/
         5d6bMFsOYOqL4EfEiOaSuwKNbItY70tZdGpcoXr6V5GEcJYftCspPIAPUmGfRwm3kGHt
         WOp0H/6i1cC0egZucV/aCcZ7RaPrHsVLhrBBXlXevmlhd8pk3IFyltr9jqsqy/BGQ7s5
         nF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=3q2OzC4cgVQGEsU7x7ynrOzwWtdjStHhZd/duWGehPc=;
        b=ryhHStdUzVuGNutsh+VaQzQHNct8p0jFF1zK2lhLcysubIXaew5RqVQGhpb+G5z/z9
         IeiRaHLI2qUS796LZTLn+fmggnDlQTpnJUzJEbtAoz7lGEX7IZjCeTA5hoVq7s7N09vC
         IvzVDHjcqfhjvlI/+wEUP6uUBeCKaoJ9s61jt94Rcfw9UQyo+yKkTaoo+NEGTK89J9BJ
         tPoFCSvUcvFL9BiLYMrSNX7sUf2hzoJh6VThicAymu8WoRQGGRvEhz0J0Fn1QcT1tC5Z
         ruNgDYoKLvmp52MOda28Pmjax9U7FlpcczVreXf4i5WKhDKNULSC2BdNcTZ2PY1NpcvU
         6t7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eEVqs3sL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 74si31990pfy.0.2020.03.18.15.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eEVqs3sL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584571606;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3q2OzC4cgVQGEsU7x7ynrOzwWtdjStHhZd/duWGehPc=;
	b=eEVqs3sLuCv96/pWpeZypBPBbwxICGnrJ9b8IPDrti5TFYpli4zLiAXsDwNzFbIApGguAp
	5oqV1deJjNUQ1yQ0+iuysHNTahVh3b4iZMOQadkYiWn/E2jhQJI6nRb82E4G98NgjRP5/d
	WRmsIwYyrWc5XtD7vN31gnawTcbDio0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-UULRDAnbP52jA24Sc2hXxA-1; Wed, 18 Mar 2020 18:46:42 -0400
X-MC-Unique: UULRDAnbP52jA24Sc2hXxA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE1F0800D53;
	Wed, 18 Mar 2020 22:46:40 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9A6DBBBC0;
	Wed, 18 Mar 2020 22:46:36 +0000 (UTC)
Date: Wed, 18 Mar 2020 23:46:31 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: iio: adc: ad7192:
 Re-indent enum labels
Message-ID: <20200318234631.5a5ec8b0@elisabeth>
In-Reply-To: <7aa18b6226a644e12302a055cbc17b41a2ccb02a.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
	<7aa18b6226a644e12302a055cbc17b41a2ccb02a.1584557481.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13

On Thu, 19 Mar 2020 00:38:24 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Re-indent enum labels as per coding style guidelines. Problem
> detected by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

This, and all the patches in this series, also need a 'v2' in the
subject.

-- 
Stefano


