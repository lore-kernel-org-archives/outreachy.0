X-GM-THRID: 6810515093003960320
X-Received: by 2002:a0c:b617:: with SMTP id f23mr19252707qve.134.1585710455612;
        Tue, 31 Mar 2020 20:07:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls9358666qtk.2.gmail; Tue, 31 Mar
 2020 20:07:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsXoyeo6IKxMWUvWlu094rUY5erRxB/1HXj3YTLW/HqJsvr4um8EXW+iOBC2ibudLKMJggR
X-Received: by 2002:ac8:2f23:: with SMTP id j32mr8647783qta.120.1585710454449;
        Tue, 31 Mar 2020 20:07:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710454; cv=none;
        d=google.com; s=arc-20160816;
        b=w8uVhDofu61pjufSgpZ2GPz5jidcPhEcyrZyofqaT9E04ug+SJ91iksyTorcV1zJ5D
         b7+xcYeBIuseD5bL6sA/cN+K/ovL/imhuw4T81gvY84vfOBSAuWehlLsvLUFmImEG0Bf
         sRGso9QvKUk0/pIvTi3sUoPVan2lx9l7pB1dAEcoNcf7E6NtQ9WjB3QiOIIIuJWYrBwh
         a0/bnJuAGnJuSJ63ALAvWfOZa1+WbrMqxGQ50M8UhalpFVoUWhmZo4g9Be0zb5hbZzZ9
         OUTnhpzxoqqqFllmIqtWitC4hoP38OxQfHoLQWFiHqQD8/yT2LmHgcTEMq8ldzEhEds2
         NXYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=J1kROgJsYqqjva8pEyfPYfIBrtLu2MjTLB/cDLReU/U=;
        b=ovHUrOPLH+OnKFQL9r0OJl1s3B3fcZC22D2jpVfK2y8OCVKWeSMli/vFThtU67Z79/
         y8qj4c4bcL/+hAxEZWNQS93LYy3XgYH4t2aEqxJOVAC00A+7Ow7DlSjKlCOx8fq4N1GW
         VrLdJFB8jH1udF4plKfFjI531FyTfEi0yxwtCkE6mJftk6J5VH1BBXNo5LgsX85ovQtH
         wVsI0aTaIqgOvmbFU7TpsFOtxliz1TtVvnO49P2askdiuLN/HeXtyfz75ZOjQIwyToYU
         bbYq1qVUafarMz+tc/U/a8wn/5k95aNeFP6gRfviNFZ9S8chnJeFxZk7h6j2mQXvRXvB
         4Kog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aOTR6MXt;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id d34si64476qte.4.2020.03.31.20.07.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:07:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aOTR6MXt;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J1kROgJsYqqjva8pEyfPYfIBrtLu2MjTLB/cDLReU/U=;
	b=aOTR6MXt4aaxSLdr93+rpmqqQsixiaLByuIQfV4meygFMnJGhTTak90Y1GljFKhj7or/Q7
	2HJu3FITIbgefvYx0dkMG0XZKevfo/sAEZSH4lPU9H8DXiHbd9pigiOU+QdmhWpY9GHGxS
	JvI4uQy13m0jbi4eZek5sH8vmYEm9uA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-77-n0E_pV2yN1S4kBLXM6VoLg-1; Tue, 31 Mar 2020 23:07:32 -0400
X-MC-Unique: n0E_pV2yN1S4kBLXM6VoLg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A749D18FF660;
	Wed,  1 Apr 2020 03:07:30 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81BDF6092D;
	Wed,  1 Apr 2020 03:07:28 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:07:22 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 3/4] Staging: vt6655: Eliminate
 nested if else
Message-ID: <20200401050722.16bd8b1a@elisabeth>
In-Reply-To: <4994e56f53b68f64b99071df1dec12e2c89663f6.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
	<4994e56f53b68f64b99071df1dec12e2c89663f6.1585694821.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 16:16:45 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Eliminate  nested if else statement, reduce code duplication, and
> shorten long lines by creating a new variable, len, to determine
> function input needed for s_uGetTxRsvTime.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


