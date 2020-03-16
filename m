X-GM-THRID: 6803435195586314240
X-Received: by 2002:a17:90a:fb8e:: with SMTP id cp14mr18491670pjb.8.1584366258096;
        Mon, 16 Mar 2020 06:44:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls8535497pfd.4.gmail; Mon, 16
 Mar 2020 06:44:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvRNneL7IsPhumCC9eHWNzdbp5iYCQL//4qOOCvBXYEvIrxsSqV3qAoLpHl4zRGPD06jbl/
X-Received: by 2002:a63:384e:: with SMTP id h14mr26490817pgn.295.1584366255440;
        Mon, 16 Mar 2020 06:44:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584366255; cv=none;
        d=google.com; s=arc-20160816;
        b=S45udWrWJN4sIAl1TrrNcFT96xKog3md+fpc/RGV7bF9iD4xhwmhNpUY52YNA4xh6o
         t5t3V79EsHGI9thFkDKWEW1UK5GbFzWOU4M6zr9NWyzJA1xhgf6T0B2T3YUfkUlDTM6L
         yHc2sPfgjSY3uUKMuAuZBHHY+QKX2DOYCq5iRWh2hN9zBeROLmN980PslJ3zRqaCtbTV
         cWdTT3JJtkyTEug/Afv5Vl8yvEReW0PxvoP+TXLbYmU3YsF4rLLni7wPoLipJefnqM4F
         XS/hWgfh0mEHKiFTvw7mCyoK5erjsV/e7mA8ymNpDe8i6ZpuuUBQICM4pf3SHdQYhzGf
         rgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=wJxbF3HfkkG4MVJLgl1Aqw1WsFigPv+AujCxMhclZQE=;
        b=c65S3LGrzTDJ7BkJv1+CXIUOhVuqE+ofAdyLfA0+gLBBVW6y/qRZ9duxv3dd1Ej/13
         Py+4Jjr7z8ZPT0ixz5tteYbyEBD3c0ue3Ad4hvDUlMWYOWuEZkoZfDTQTVFJTqWnph6f
         uaBjK+CsbehRr8TYkZGcIYAxMwCeHa0EGXi9j9CYm6Xh09Q57fGvL4CXg0g5CGqaLej1
         caTZ22K4jBlZVQ9AEW5w78C9bw6oeu4+dkCpKXwdJBuHInn+3Zw70pO0RDwQ0ldDEvNk
         jz2NEevnFR+I/HLfpwyryPjIvD/xwNM54/Pcl8eJdcvYHkWtcgEtv3yre855dxlpPxd/
         WKJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E9CnYjDS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id t16si297ply.4.2020.03.16.06.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 06:44:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E9CnYjDS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584366254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wJxbF3HfkkG4MVJLgl1Aqw1WsFigPv+AujCxMhclZQE=;
	b=E9CnYjDS45URZ9sLjNoG4wbCVxCqK4sj60WsKQTL39YKkVkXBFK2oi17xrLMYxvfhvdjif
	mG7DEr5QZ069zotACKmTWRBxs6JsWXK5VtH6ZvJ1E5tTnM5wQJCw0Hdsq2rIhyqFPL6Vag
	5rjdZVxipfGlZ4PhsarZjAE4slfbVkc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-hkGbw5oNOxyBvIisbI5mZA-1; Mon, 16 Mar 2020 09:44:12 -0400
X-MC-Unique: hkGbw5oNOxyBvIisbI5mZA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F173107ACCC;
	Mon, 16 Mar 2020 13:44:11 +0000 (UTC)
Received: from elisabeth (ovpn-200-84.brq.redhat.com [10.40.200.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE57F5E24A;
	Mon, 16 Mar 2020 13:44:08 +0000 (UTC)
Date: Mon, 16 Mar 2020 14:44:03 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: fbtft: Avoid potential
 precedence issues
Message-ID: <20200316144403.5b08bfdc@elisabeth>
In-Reply-To: <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
	<5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

By "carrying" the tag I really meant that you would, here (not in the
cover letter), add:

On Mon, 16 Mar 2020 05:12:32 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Put parentheses around uses of macro parameters to avoid possible
> precedence issues. Problem detected by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

	"Reviewed-by: Stefano Brivio <sbrivio@redhat.com>"

after your Signed-off-by. Mind, however, that you should only do this
in case the reviewer tells you explicitly (I've seen it being done
implicitly, with myself and others, it's really not nice).

In any case,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

(will check the rest later).

-- 
Stefano


