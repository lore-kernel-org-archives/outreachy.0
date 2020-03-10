X-GM-THRID: 6802581190455853056
X-Received: by 2002:a92:bf10:: with SMTP id z16mr21973475ilh.87.1583860142394;
        Tue, 10 Mar 2020 10:09:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls1621429ilb.4.gmail; Tue, 10 Mar
 2020 10:09:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtADseATsp03MEWvAa0qt72KuQ5y4Js1yv8SY2jb8+3pp0UVrzyN2o9AakNEmYMcMVkkFlQ
X-Received: by 2002:a92:c702:: with SMTP id a2mr8775690ilp.128.1583860141037;
        Tue, 10 Mar 2020 10:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583860141; cv=none;
        d=google.com; s=arc-20160816;
        b=NdNW+OqKuut3DJPapFgTiuIeWay4C1B0LbOt/SHKRSSWmwIYoanRS/ULsG+RyQK0cA
         +NGuyfrhMl3aACRMRT/Vy8d45YX7OWkbumyAm+INZK+KF96V1NfwgIOoluYpJWE+2T+g
         zE8j7iH4APppULcqQvCIOwygxp1GxTYIyOQXLZlXmgSooasAhGrCWn7564oN7/aSEYr0
         tqqulOMuz5O0l54E+CgzTRQmYh8yY1uRkaP3cBaxF6L1qWwlBDspREM+B23HgXE3WdWj
         UCvTJTCdaKFB/9rwM1vJ9Q93VrJ6pRofnSWhTGeFfMTXgxN/w9L7k5HIrLlGGDM/E7Zd
         HiVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=4CF6AkM+KdGgLFLMRNc2MUoEuh6FO2IBpkLMltOR+v0=;
        b=nKw2INM1Qeq064QuwAUADX2ETlNP2t3pNn4uxRHi/i2QTdNohlPHDMskcPI4SYTvYD
         lLVtEHxEhzQS0Eop7sSbhvjMAaj0WGyz+5h1pWjnGhhYtkv0xVP7cLdHPZZWlmIpI5bd
         +ZOGbz3Q7kKdFIUjq283JDE0nTBgYyufrKhlEWlIyb0lQieNWPj2Fw4CGQqGL5ZY9gDo
         xN3XlAhq8OWFd9W4pv2uvLu1SuPXD06Atys0KEEOrqAEADk/ISoxXFpVBFUHCEuautck
         M8Yvz+EWq3n4QwmnztwRciIJzUVKoEnkUV8ECqrKock7esbDhUikABc8hJlTfBRQpwWJ
         PclA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cd2vN7BL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id z20si753453ill.5.2020.03.10.10.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 10:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cd2vN7BL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583860140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4CF6AkM+KdGgLFLMRNc2MUoEuh6FO2IBpkLMltOR+v0=;
	b=Cd2vN7BL3FcnZ2laehqjFgKqo94l1a5Som13COcqtKWx7zOIJ3TIVzVJVU5AJCrdsVVaYO
	/RqcCgkx6JJ4BqIepO9RcfnVmMEk1ZTH4d78tHzB3lIdy1lyM7ZysvEG1PDjG9GdNXwgpn
	cAA9rsHJ6o2mnI3GwP0EVNYwwxTiV6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446--EE8WazgMBaosoj98MSVLA-1; Tue, 10 Mar 2020 13:08:56 -0400
X-MC-Unique: -EE8WazgMBaosoj98MSVLA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47553800D48;
	Tue, 10 Mar 2020 17:08:55 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4805E91D9B;
	Tue, 10 Mar 2020 17:08:52 +0000 (UTC)
Date: Tue, 10 Mar 2020 18:08:46 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
 gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: vt6655: power.c: remove
 unused code and improve readability
Message-ID: <20200310180846.7a765ce4@elisabeth>
In-Reply-To: <cover.1583848946.git.lu@pplo.net>
References: <cover.1583848946.git.lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Mar 2020 15:09:06 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Here's a set of patches that performs code cleanup in the file
> drivers/staging/vt6655/power.c
> 
> Lourdes Pedrajas (2):
>   staging: vt6655: power.c: Remove setting ATIM Window in
>     PSvEnablePowerSaving()
>   staging: vt6655: power.c: code reformatting for improved readability

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


