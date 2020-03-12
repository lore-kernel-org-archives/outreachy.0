X-GM-THRID: 6803294176512311296
X-Received: by 2002:a67:2f97:: with SMTP id v145mr5000748vsv.63.1584016287096;
        Thu, 12 Mar 2020 05:31:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls22908vse.7.gmail; Thu, 12 Mar
 2020 05:31:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvEcGBuLMDZ3DC/0dKbSZlr6rMUqxJu26Up1XESMW3LTlLF+1yuXd2Dl+hcK3pwVPweC5Q7
X-Received: by 2002:a67:320f:: with SMTP id y15mr5461190vsy.157.1584016285559;
        Thu, 12 Mar 2020 05:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016285; cv=none;
        d=google.com; s=arc-20160816;
        b=UFjxDUbVHpxYnTzIYPmBqp6lMUwDB6TMCGJq6e87SMMtaYG26WVscaZLAoU1TuQLYj
         2TVw9C91PxEjffAnalQBhba0idEDVXh6Y37W6TAdzjhwI5AUGdqI3zn8Aaou0ZrhCFPa
         CDZRLplL2YMQfmza0TtrSPBPfJytzmQ4Qt6XBCdMaAeOQk1WpoOKDItFMFNoTL+wvVyc
         ygtNQqGPk1dQKQrLj//A7N4p6edtMe1xykxgtgRFWk3gT3nuhYEPV9wv/TVVGM2DaEs/
         hA+JDWHiBBeF0ha/+6kkXekZgLMZgK2x5rrdK9gCDsHkbbsi5c5QwqTX9tZA55Uk2TZD
         whRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=atk7dPe9w3xlsO62HVVXQ1ADfhEopAVFLeEvQuA9Hlk=;
        b=uEVIxHa/DgH//ozt1s3TvP3DQAYeqBIbMRwUcHSpa+9LMSDWcQCpOz/2Kjwjjw2PTQ
         kTufFWo+YVYamGOWmhjr4wBX5AB/h5R7+efVfhapEVt4IGl1qpTQwPvRFNZSZeEB6k5C
         MBxYz7dYT3vIHqQRzuZvsw21tiAWa02OkG8kZAI/NCqcg/i/fAJt1cBpjodj3HNEUj/r
         OtIzt/y90HJNHzBRCyHMUhNpgwALe6Fy8a09Sm56eX0eTOWfClt96bawkYk45GA29jd6
         hr99Di0cVCqkww/Vk1arRaUEjbk9VrqfcuHDlUgGgBdwmwnmES2eP2Tmk3Tf5vmPbOcU
         ZxDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B4AMwQa7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id c6si198831uan.0.2020.03.12.05.31.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:31:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B4AMwQa7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584016285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=atk7dPe9w3xlsO62HVVXQ1ADfhEopAVFLeEvQuA9Hlk=;
	b=B4AMwQa798p0hSz7gsWGsbBFnFRcQz15tJXhJD7eNbtHiR4t2ibo5sGDfXARMNy1klHokC
	LCVMhHC9Y88Hm4fzo8jYDIU+4UxJRctcJccdC6wlHrxdJCMlcGptgM64UrRrCY0p9k7IbE
	sILTeah1yC1ebpcCxjrYa+K+iqF0buQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-DqTgAbetMK-866PEkci_3A-1; Thu, 12 Mar 2020 08:31:21 -0400
X-MC-Unique: DqTgAbetMK-866PEkci_3A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57732100550D;
	Thu, 12 Mar 2020 12:31:20 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6815719C6A;
	Thu, 12 Mar 2020 12:31:18 +0000 (UTC)
Date: Thu, 12 Mar 2020 13:31:12 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 matthias.bgg@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: mtk-hsdma: make
 a variable non-volatile
Message-ID: <20200312133112.4f61c60b@elisabeth>
In-Reply-To: <20200312121548.6719-1-lu@pplo.net>
References: <20200312121548.6719-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 13:15:48 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Change variable declaration volatile unsigned long chan_issued to
> unsigned long chan_issued
> 
> Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst

This needs some more details. From that same guide:

  Patches to remove volatile variables are generally welcome - as
  long as they come with a justification which shows that the
  concurrency issues have been properly thought through.

so, here you need to investigate what that "volatile" was supposed to
achieve, if it is achieved by other means, if some form of locking is
needed instead, if we end up in one of the "exception" cases also
listed in that guide.

-- 
Stefano


