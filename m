X-GM-THRID: 6803435195586314240
X-Received: by 2002:a17:90a:a102:: with SMTP id s2mr21668056pjp.46.1584308787493;
        Sun, 15 Mar 2020 14:46:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8597:: with SMTP id w23ls7456659pfn.8.gmail; Sun, 15 Mar
 2020 14:46:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7nvLfNkUrOXNTKlsvv8vv0fwfDks+NGYMYzuHQd55CofIAPoT+mNjjtHAShGpoMXhhXam
X-Received: by 2002:a63:f113:: with SMTP id f19mr24856872pgi.168.1584308785802;
        Sun, 15 Mar 2020 14:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584308785; cv=none;
        d=google.com; s=arc-20160816;
        b=gWT9CCjrggfiemUVmqYgLOUvqUvzwPrlX+IxwKhBs+Lm/mcQKWrM7MAQAVFv5MtPv3
         JTL0mjjSNQkoxmxWoO2X4QPR/TZ/WA2U1Sy6sc2q4kSicr5scqNwGuh5TXvSPLKH/ROp
         GpK1NjXUjQhFAbO9sj0Q5KvscguFtry9PYy3mPGjwJMNBm4NZr4LIARumWqtrg9fEB/T
         JNOjH2pilY0ezZdlOfG95Prh/+CzjGdNY05TvFwhQ/6VE/TsEcCXBkE+g7Yx5Boy4Wxb
         cynZnKACCFzFKv1YcNEPSJqFbvUjq9jHz8lOQKKRRXO2fS4VtNAJJ+6OTREOSWhFgeO3
         nJyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=sHfcjzgfaY5R90PC3V6DwaDRbKY7LaYZpZ0Y6wTFKzM=;
        b=rXWKm8eeTpF+vhxJhwKksU98kAK6UUuHNuWQR0x3LUpmWSBwyTgN/pzNXFqo4BCjfj
         BaGpUCNdASKMM/mfArakZTvOe8zKU+TW4rFPl5KS6Lk/Arhmh3tune0+8Wz+jBNtbksA
         Z7HnAVJKA2gkckIIMjVdF7Oaisb2Ycv1C6nCbLWT3Rd7soKgV/93ohReX2zLhVslCVyM
         eNhD/MjzOuCdaojO2ZkQjm82Xf008tAV3nYpWChELAX6GK33WEY4fa58chB+r8rdRXg5
         Xb3ZdUfVH2ti+nxqC5eeXsq5lKVSZMADW9v7ZQq9n0Nxpm0B1m9pi8XG2NaEAT4lrDW8
         3k/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U4or5q39;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id f29si576596pga.0.2020.03.15.14.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U4or5q39;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584308784;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sHfcjzgfaY5R90PC3V6DwaDRbKY7LaYZpZ0Y6wTFKzM=;
	b=U4or5q39X3hkEAgE2P1pGEs3VVf3pOxlkbUGjHI1A1oK0Hb41g/EB240bjJgOe9b9Uu5Sk
	gh1Bt7lXJdPf21ZAxz6uDaEyZW8HfGDZruWdCoxpGJXez6ldPWYDTC7tAg7tiqk+Wa9i0v
	uLgTxzHJ0x3xwcWLWe5Kk+zor55LiVM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-W65PPwRDNL2gjf9qzjiNmw-1; Sun, 15 Mar 2020 17:46:21 -0400
X-MC-Unique: W65PPwRDNL2gjf9qzjiNmw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07EED107ACC4;
	Sun, 15 Mar 2020 21:46:20 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 749B38F355;
	Sun, 15 Mar 2020 21:46:16 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:46:10 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] staging: fbtft: Reformat long
 macro definitions
Message-ID: <20200315224610.38cd005c@elisabeth>
In-Reply-To: <46aa3337412b3d6c43702c66600a90e9366b2896.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
	<46aa3337412b3d6c43702c66600a90e9366b2896.1584105606.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Same as 1/4, looks good to me,

On Fri, 13 Mar 2020 19:13:12 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Multiple macro definitions crossings 80 character line length nakes it

crossing, makes, them

> hard to understand. Reformating the these lines makes the code more

Reformatting

> readable and easy to understand. Issue flagged by checkpatch script.

easier

-- 
Stefano


