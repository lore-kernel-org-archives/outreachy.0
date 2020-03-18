X-GM-THRID: 6805399652543758336
X-Received: by 2002:a02:6c50:: with SMTP id w77mr378516jab.39.1584571875712;
        Wed, 18 Mar 2020 15:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:85cf:: with SMTP id e15ls76537ios.7.gmail; Wed, 18 Mar
 2020 15:51:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtkrWijn/c+In3LoTr6+LPtGLlwOzKlSif1PsQWubImZVmlkOcL5zW7qL68G7aKmr0wQpkb
X-Received: by 2002:a6b:d207:: with SMTP id q7mr82218iob.49.1584571874362;
        Wed, 18 Mar 2020 15:51:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584571874; cv=none;
        d=google.com; s=arc-20160816;
        b=VOTwI8CaIxsAGIQudJLeIkwyMDYJkOb3RoW3EbybAsTzBoMVk2SGmLCFpIWWxS37qJ
         fc/EvLbj+SyRy1nhfdyoaj9rWDO2syhJ61JSwSaDJujVmPopWMcRSK6WWJZckmIArpq0
         dhCn1SFiBJxV7b7FDM0jS7IrqJrf6lmGhnKrgMW+Vx9SLY9nIL8ek6Q/9a+AL98GdLzX
         YQdANb3THY6KVMYeYaPk3ea3hCkiqT4r6TBN5JuPjtXmrlntkOJVcBQoRj0CdiTWOqHF
         BNOmwo+r7IYMft1YrqeAlEQGqB+oaa6UR02lLAV5sxm9HZbTU4W9ofjmMh8oKSuLFvZP
         oG5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OsT8y8UZFRfG+HGRJDP8qrLB9AX5R1GNyZr/HRuK41I=;
        b=tCgVtLhnMMbXEjuGa+58PNHhcxUWqj+HwgozM29LQeGNORhS8wOTiwhbOSQcH3KVge
         1fcaxZ+FrdlfPcByr04hWgfT7WfOE2F8nFlUdHVtndCCS0YVnVAD6rjPc+ehs8aY4Jvh
         9kmoX+FW/gsyn7yonzxC+gNan6uj4Y/6oX1t70R3uCxvkEAQn7i4lr8lHGgrDE7q28di
         fwUmR9QWWYv5yslFayrZSiw3SmIAizO6gjGplAsoz5yiOskuXH7DA/6DQtCD5hy8hM0N
         9Dna8V6zRnzRmiMvyE6w7inBLuGbhnRdNHLTbvQRqr7b2Kb691pg8Mcpl+1faIWd58Yp
         o1Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GGgPeyRu;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id u6si30334ili.3.2020.03.18.15.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GGgPeyRu;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584571873;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OsT8y8UZFRfG+HGRJDP8qrLB9AX5R1GNyZr/HRuK41I=;
	b=GGgPeyRudFZnZVQ+04MB3UapVHUjqB2djnjAIZidMWCARzNR0Nc27o1bZBxW34kOBA/aQK
	H/jjqGJnVXrJ42wWay0K5d9WJYYFEBwYH6OBKjOmIpBn4xdU5Wf4SiFdVykvoS6y7ejE2a
	uH9mRKr5c4PXFRJwhKZr1oH3UrqcQyo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-KMlfn90nOf2rypVQW7CKPg-1; Wed, 18 Mar 2020 18:51:09 -0400
X-MC-Unique: KMlfn90nOf2rypVQW7CKPg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7ADA107B7D7;
	Wed, 18 Mar 2020 22:51:07 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6D4C912AC;
	Wed, 18 Mar 2020 22:51:03 +0000 (UTC)
Date: Wed, 18 Mar 2020 23:50:57 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: iio: adc: ad7192:
 Correct macro names from SYNC to SINC
Message-ID: <20200318235057.4da5cd5c@elisabeth>
In-Reply-To: <4eaa90f120a24fd5f08338d0643ee8f215f169b1.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
	<4eaa90f120a24fd5f08338d0643ee8f215f169b1.1584557481.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11

On Thu, 19 Mar 2020 00:39:13 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Three macros include SYNC in their names which is a typo. Update those
> names to SINC. Change suggested by Lars-Peter Clausen.

There are tags for that, in particular:

Suggested-by: Lars-Peter Clausen <lars@metafoo.de>
Fixes: 77f6a23092c0 ("staging: iio: adc: ad7192: Add low_pass_3db_filter_frequency")

Please keep an eye on messages from/to others on the outreachy-kernel
list, these topics are being discussed quite frequently.

> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>
> [...]

-- 
Stefano


