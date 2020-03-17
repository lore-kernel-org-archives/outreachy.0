X-GM-THRID: 6803797198848917504
X-Received: by 2002:aca:bd46:: with SMTP id n67mr1653314oif.120.1584407906387;
        Mon, 16 Mar 2020 18:18:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls6257428oia.10.gmail; Mon, 16
 Mar 2020 18:18:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvuxSyATRSVnQrPywjPz83x6a40S/TDjPA+RzMXYOgP4PT26npYmU8ImsT/iRPthfbATL3
X-Received: by 2002:a05:6808:103:: with SMTP id b3mr1795754oie.46.1584407905330;
        Mon, 16 Mar 2020 18:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407905; cv=none;
        d=google.com; s=arc-20160816;
        b=uLWRpyBxmNWCkEDcXAUXUyMSwk22IHpPtZJatUrsxsVgfyOIUsbNi4mhe5ajEI+qwc
         M688YfR06KtqZmDcoRynsikTMLnxIQVRGW6l0Z2BdyHjDnz/lRkbdzshDrECO7Z3O/0W
         2382fuSG3O5OwRChhQQ1A7VQ+U80fDKg/Cu4K/8NRVjW5UFEdKonSeey/FN79BZlQwwc
         mTpi85jYNICh7dWeAa3caopHV7sWVHYAPHqv1accCPwXwS1BqfWAvunNzJr46Ml18yC9
         Hq9chYM0pTzRhEPYLkepAH3/vQdpsQSgOaHwH0AWbamM5XQCcjgRmYDtBg88LkNMxrEr
         qXkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=FUULoYohHYGzXbeRQZMl1HUZSdYW7f+GtFs15k2lwCQ=;
        b=yZGNztq8SCCMDmnydBx8eWLmOopKyDXrXEvwFNzxcOY77wpQeV1ri54/12ni8MRy9Y
         a3rj4R8o5aATJZDTXZu2lPpI6/0Ny1lENt8V151T1Ir6JhUGQDj4kTGxx1ZwXBDjljGS
         A+W97N3XpJ8IfUs87mDG9VDGyowQMRTofS4YTZFxtjOp06eSIXGtfjPObmloslXbobi9
         2hN++RfMxQMD8TFPRHpeHeHeqOmwBxK7FxzLJ6qHHuoFS89UeidOgYwieWbUql9VL3Jj
         zlnFsSqAgNXiQzzYnjJuGvuRmyayu82THazh+TINXJnnA6VNOYnfJSPCkNu8rdkgk3XD
         LCzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=S11b4aju;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id o10si128393oic.1.2020.03.16.18.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=S11b4aju;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584407904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FUULoYohHYGzXbeRQZMl1HUZSdYW7f+GtFs15k2lwCQ=;
	b=S11b4aju+i4UeF1va8IxEcI/ly7BZEKuolhAI6tCw5ow6PPqlMdh9sVQ6Y4KfAuwJTSdvp
	8vIJBhLR178rwZa9l/BTcFWAa03A1zDgrax9QuDFZy+25u+glx0NFQuvG5aUnGKn/sjfZh
	Ege8Z1f7JxF0zHXv0AVW8PPxsPVDPg8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-m9y-lKLOOi2qj0W519r1MQ-1; Mon, 16 Mar 2020 21:18:20 -0400
X-MC-Unique: m9y-lKLOOi2qj0W519r1MQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A8D38010F0;
	Tue, 17 Mar 2020 01:18:19 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CA5919C7F;
	Tue, 17 Mar 2020 01:18:15 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:18:09 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] patchset for clean-ups in
 media
Message-ID: <20200317021809.252e858a@elisabeth>
In-Reply-To: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
References: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 14 Mar 2020 03:24:02 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> Changes since v1:
> Renumbered the patches to account for a deleted patch in the series.
> 
> Patch 1: No Change
> Patch 2: No Change
> Patch 3: No Change
> Patch 4: Correct subject line from `hanto` to `hantro`. And remove
> unnecessary parentheses around `vpu` and `val` as well.
> Patch 5: Deleted: No precedence issues possible.
> 
> Kaaira Gupta (4):
>   staging: media: allegro: align with parenthesis
>   staging: media: imx: remove temporary variable
>   staging: media: imx: remove parentheses
>   staging: media: hantro: remove parentheses

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


