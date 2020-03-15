X-GM-THRID: 6803652137195667456
X-Received: by 2002:ae9:df47:: with SMTP id t68mr1428159qkf.262.1584307800148;
        Sun, 15 Mar 2020 14:30:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8e46:: with SMTP id w6ls3214942qvb.6.gmail; Sun, 15 Mar
 2020 14:29:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsP5hgY1eIOQOb8xkuLdp4lnfz5yWsYQJDNreV056cVH3/9APiD0MqVQztP1stUTB4/DeKv
X-Received: by 2002:ad4:57b3:: with SMTP id g19mr22428751qvx.87.1584307798758;
        Sun, 15 Mar 2020 14:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584307798; cv=none;
        d=google.com; s=arc-20160816;
        b=j/0wL6GPaskWTB82KWRTTaCFcwGWZymhoFu/i3nSet1FKJy4K9dfQ/e/HCKZjEPTll
         3capcFEoALxdmlCpKUKHR61HT4dk35qD0KCmK4HMqhoEvImoHjTyAn1DAW4S+wYH+r5C
         qd7HV2BJpseohulCgcvkk8z2QYR4qSj0unDjPSVrOT1Ohzdzu9uZyOGfbZGRQcxHNs4Q
         hKTiN8zYfAqUzYGMkWN8uYig0v6TIaE+GF+5nAegpgmJ1NT9besKUNnCOLzVAZfD8+HA
         RMeS5VY54EzBvIDAbhbmB6i/jbTBF9OZL/t+Rv3dS+3TjiHdEeX3CjKm2R7zUakOYAuM
         +/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nCZjjXhZtIZTco2GVuY9U8dtD4rKbgr/KTIhT3OsK/I=;
        b=Z02mH2VqgemBufeGFZg8U2GNm6wUVLJ/j2V5OP9x5JQht+mKy8xliO8otfAZ2IlXSy
         TT+EkRivpKDeNy4u+ylGwW908uWxVibHCpMn2FEXXBhFONxwVQ145jaqns7lmSCE75uL
         8a3s+vwhljvA/XvzhCuhFeswGeWP5lsaI/VdQYkKRxM1IwJQBdFe5FnMQANzni9pRDgn
         /jnt8l0dqyUcYXKVgltj0csPoFf3OiuiccesTL1evZIyloHugD1WIM2QqdTHepHGnE7l
         c/9aq7PFW8FgZQURVXDW7ZwYB6kLlAmOz4lsX0gFUn5dNU0+IxHJC3BEx3S4oj5Hl7YK
         HQ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MTniCmoK;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c2si757703qtn.0.2020.03.15.14.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MTniCmoK;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584307798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nCZjjXhZtIZTco2GVuY9U8dtD4rKbgr/KTIhT3OsK/I=;
	b=MTniCmoK8te0pj45YyeqTCV3YSQ5yLUYxEuonWQv263mTR4lQv+A9e28nIRp49NFs02EsV
	4oHNqPvN4AhVRUmESBZEiGQXEOp1gDEC65jg8Vizu8Ypt4sm7W/9Ff8cqTM1DAnkTYcT+n
	bHibl88nLQlYqmTS3K0huKNTihQFD34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-4bSSCoquNZ2P3989GY5_Pg-1; Sun, 15 Mar 2020 17:29:54 -0400
X-MC-Unique: 4bSSCoquNZ2P3989GY5_Pg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E82BA800D50;
	Sun, 15 Mar 2020 21:29:52 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B737B60BFB;
	Sun, 15 Mar 2020 21:29:46 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:29:38 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
 linux-wireless@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
 nramas@linux.microsoft.com, hverkuil@xs4all.nl
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: cfg80211: Use
 kmemdup instead of kmalloc and memcpy
Message-ID: <20200315222938.23a9faec@elisabeth>
In-Reply-To: <20200313112451.25610-1-shreeya.patel23498@gmail.com>
References: <20200313112451.25610-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12

On Fri, 13 Mar 2020 16:54:51 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Replace calls to kmalloc followed by a memcpy with a direct call to
> kmemdup.
> 
> The Coccinelle semantic patch used to make this change is as follows:
> @@
> expression from,to,size,flag;
> statement S;
> @@
> 
> -  to = \(kmalloc\|kzalloc\)(size,flag);
> +  to = kmemdup(from,size,flag);
>    if (to==NULL || ...) S
> -  memcpy(to, from, size);
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


