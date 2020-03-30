X-GM-THRID: 6808251877049761792
X-Received: by 2002:a17:90a:202f:: with SMTP id n44mr14368328pjc.150.1585550867525;
        Sun, 29 Mar 2020 23:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls11369231pfy.11.gmail; Sun, 29
 Mar 2020 23:47:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDsgjoQw7+E842Jf+SKy9afQiY3Ta4dSKeLjBpOntC3F+avSejYbwSxIoJ0RhCmLGKSzjg
X-Received: by 2002:a62:7bca:: with SMTP id w193mr12044074pfc.319.1585550866192;
        Sun, 29 Mar 2020 23:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585550866; cv=none;
        d=google.com; s=arc-20160816;
        b=m+g9ObD91SyErTRxt7qRTru/PyhFkv/b6bBNRv9qqI+4wSZKgn8yCYrQDYz/yIxppC
         kecU06FJzduPivjQ8HXEgD1akp2Q3P5khxmZP7F+0+eYO1Vrv4+JK2nqefArenqYJyJ0
         sT7mU0fP1LXzgKNX6xr3/m2klvSqaAirNXI+jkwWQlWoRsiyeXgq0h2QtB+jF6W1A/+3
         MNOZqUTTU+IM1SYY0vUcrpRZCJGYSs3Y4rxNhI5ahSlJ9KPcaOsQ9nLdNc5kvXMvPo1Y
         gycAcSbLq2TgRiEwQradnJ1QZoA2SSfpsQzAlph5U/hFjoIHpE5W82ZsjdlzLnb//5sb
         j01g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8efMudaMe4SXKlisr5XoKCgiji5DGX+MNsa2rB9kjG8=;
        b=Zf8C+qpaXbRFPm0m33KZxTXn+qa9b6h8E+L55MRqvjP8cU62oBzoBiZ+3HouVoByw0
         RC2iDv8ceRpmouPQyQsFotm24QbrIchu7B3PpVNaQMnw3XiSxKKZzlW0L0f+s0sqLw+Z
         qy3RQQL9HO4YFbG7Yzf5yoOPmUmMnNr81JgABZmozgFaj7g9WXinz2XyXElQuGS+XeMx
         jUDmr4x8O7O17/HO7dzRAmhv0sjVJDxebeqxO7gFfLsFQXBHi9f/F2mlcXPZSoLu3vWc
         02JSlHSX9aPwUbV8WxTw6F81mRZETlKbU5o0EWv0wajHm+yCa+pZRw94jyCOVlGvh6sz
         rKNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eh1sDu08;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id r76si832110pfr.2.2020.03.29.23.47.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eh1sDu08;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585550865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8efMudaMe4SXKlisr5XoKCgiji5DGX+MNsa2rB9kjG8=;
	b=eh1sDu08ajbQDobrXtOjcFATtYLb82UKNAf/sdn6oAmwwI4GiQr6BjBZlKM19FX7kWhi3q
	zBs8OmMkCesV1Su8nX6/oe45RqQJkVgAZqDPnaht14oCWdmEnwagJXafElW8R1RzqqIeRa
	tKcm5Obz9PsY6ALOhA8raB9bjZD4x20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-rQLyBsIWN9We9sa-h3OYhw-1; Mon, 30 Mar 2020 02:47:43 -0400
X-MC-Unique: rQLyBsIWN9We9sa-h3OYhw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 034F7107ACC9;
	Mon, 30 Mar 2020 06:47:42 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2F165DA76;
	Mon, 30 Mar 2020 06:47:39 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:47:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: rtw_efuse:
 Compress lines for immediate return
Message-ID: <20200330084734.479420cd@elisabeth>
In-Reply-To: <20200325205418.GA29149@simran-Inspiron-5558>
References: <20200325205418.GA29149@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14

On Thu, 26 Mar 2020 02:24:18 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Compress two lines into a single line if immediate return statement is found.

Same as your patches for issues reported by checkpatch, I think you
should post these ones as a patchset.

-- 
Stefano


