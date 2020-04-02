X-GM-THRID: 6810919292495724544
X-Received: by 2002:ac8:317b:: with SMTP id h56mr723999qtb.172.1585791969722;
        Wed, 01 Apr 2020 18:46:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls1040580qtc.6.gmail; Wed, 01 Apr
 2020 18:46:08 -0700 (PDT)
X-Google-Smtp-Source: APiQypIyp3HTzeLXF0An1Xj7PkIXVUu6sQDeydeExT5vnZtwHGZuu/ZrFB4V6SwqbFbq4RKlAce7
X-Received: by 2002:ac8:39a1:: with SMTP id v30mr737391qte.112.1585791968627;
        Wed, 01 Apr 2020 18:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585791968; cv=none;
        d=google.com; s=arc-20160816;
        b=CAr44x6fSITCbFnaLweHlc7+Y5Mgera0OeFvsMmy4GvpTcGgSbfE/lb8qdAM1s8u/y
         XFNmhdNGcOLdBtJzlYjK/G3+AJbC03ruENJgmdq2wZ4KAb5XhrLmavjAz8Mcl38X4FV0
         6Whbaa+zTrcCJV1xXzXl36r3MAhZVwD3KWRN+3Ws773HhAQ+ku/i4UvOcaTzjCFa32O+
         MQ8ekTWpyHFa5TYxwzhbZpUFHNBpkFxnW9i+rqPmSVf7GsUuugsaR892xSec7hbHPKAN
         EoWzN19khRu6mcugV6Nm2xGjXImJted7Nm7R3/1ID+cdxwNNJviEvsukBXlzJvdCDZCE
         Db2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=SGKV+mj5X3vQFrVkT1HrrdE3Djy0V822MxL90EGqQw8=;
        b=tvziPopZQXT1Kv6WD43lBvFN+HxWsOqNhgieFibNwQgETlHq0SdMBQ7JIB6pYUaS2D
         T/Hyff9/hoM8Dard+2HnHCa0Otzg6dbfRderMv1Ei53LZ8c0g30KncAxkbIWM8+LI4AP
         /A7pb6xDbBiHo6qhzbqardtz9ihYpOqPvKMizFETnjNkePH0DZNpQZ5ub4O41dp4vfv0
         DIAzyxgRdpW6IDCo/lsQhAvGcQKQK8ux0CMi5eLa0DoTqdoUK76/4piFtpdf7NMD4lza
         /3fVVaz5gx88yXzm2QK3ZLVp+7XMYonXtXn6ummAU3ZR378rMWshfChIGqNav9VxANLV
         zrXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W6EOA7Pz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id z126si255525qkd.2.2020.04.01.18.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 18:46:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W6EOA7Pz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585791967;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SGKV+mj5X3vQFrVkT1HrrdE3Djy0V822MxL90EGqQw8=;
	b=W6EOA7PzcL8QmIna9pKOpBqx4NFm5EC08exkqMzS5rCh8z98aWlXdROpzHtfjdv2aEXZFS
	5cPESMP01fDQq4J+T3grshBBr67YUE16ZHR1fve+rvJ8lkGPn7PqA4BurL+Cg4TRKullqx
	OEWyk6CtDzADXiFd4SrrVWeYeSbVB5I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-bZQTtJhKNEOBPbHDx9O6Bw-1; Wed, 01 Apr 2020 21:46:06 -0400
X-MC-Unique: bZQTtJhKNEOBPbHDx9O6Bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D18DE107ACC7;
	Thu,  2 Apr 2020 01:46:03 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.8])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 949749A240;
	Thu,  2 Apr 2020 01:45:56 +0000 (UTC)
Date: Thu, 2 Apr 2020 03:45:51 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Arve =?UTF-8?B?SGrDuG5uZXbDpWc=?=
 <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen
 <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian
 Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix
 parenthesis alignment
Message-ID: <20200402034551.1775a192@elisabeth>
In-Reply-To: <20200402012515.429329-1-jbwyatt4@gmail.com>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13

On Wed,  1 Apr 2020 18:25:15 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Fix 2 parenthesis alignment issues.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


