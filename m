X-GM-THRID: 6810515093003960320
X-Received: by 2002:a9d:6341:: with SMTP id y1mr5585855otk.40.1585710364942;
        Tue, 31 Mar 2020 20:06:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls9415390oif.3.gmail; Tue, 31
 Mar 2020 20:06:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ9pdvNZFluJx+hziO3uofWhhXqsvSznMr5+Wk9iOHghR2teGewB+TyKDiS1LfxGsqoXUAQ
X-Received: by 2002:aca:1b14:: with SMTP id b20mr1431520oib.18.1585710363788;
        Tue, 31 Mar 2020 20:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710363; cv=none;
        d=google.com; s=arc-20160816;
        b=gLKJvFFZRbzP1IoEQKrTNYCSeAYmwwmV9cEZ73W7MsLBSnQ41xn3F0uF9ZmE132qho
         jZmg8QZd+iWRVAchwQXIsO0woD50kia7JXzsrU7PK+SsAMb9HYi3j/6lnVF/aFlui5jI
         RtlMtS4xZubkmmN34Svz+QKXwVl4h+dIRoIhBJLXuC/IasK14yJNAzWZJpEPk+mbrTmq
         ZAPmN5NqG2yDWwXET++IF/9BhWfmD5UGxHyM9qYVpUBYwQmTgIAaLCyU//pHpKlhl+8O
         We7t8dvW/reZKw355niCMkFprz8z9ealoimNkz+/XSu3nXOliKEb8ytw0+33iI9IT5O4
         1a/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=h47WfR0HobNFm6KO4E3seyHoN8wfRq+Djb/T69FfIiQ=;
        b=qrwQBay3Ecx1J2NstXEIr3su3HjKvbGnlZN5c1E7w5CeTVzHABxOSRjHDPV5GbQP4a
         9/tAaDrrurz+E5PhTUAikXj93MQRzIAKEfyTJFVE/f7FGg73Mg7b2GMGHmjXEpxA0RNh
         IbEsgvkr2QpHAjxgJtLsSdhfX9ibEULZVMXFiL3/6DMS0xjkFZ6FF4wFbaXiPkAfIm0G
         7Zq5MmGVwRcrZoDQhFM88znD/rRKeJL2AaYbPtL1GhRmOwoT+qaIWC5w9oEyTVJnJuEd
         hVOrP6HpB4ACuhcDUgCfX6yd7FXEX5Jca4bG+uQX4uQ4cDOJhJDKcHRqXXIWier6aDo6
         tRbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aIXqwZiQ;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id m19si85753otn.4.2020.03.31.20.06.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aIXqwZiQ;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h47WfR0HobNFm6KO4E3seyHoN8wfRq+Djb/T69FfIiQ=;
	b=aIXqwZiQLT8wktM8i/iwxxeUr3QqtMyYwuKHb/+LXXEbRT1WNUooXtN63wGuRv0gpUkSqF
	+fyuezMBrR3pQzAPZ7OPldYtpiafhirkmYPrCDs9g/kFQre14HQIkSGpoo3nPmJZpFi/zm
	xFV1CbBAI6qeL4T6BKrJ8IkbJNM/180=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-msfs1RlVMrGNVCdcu8BuNw-1; Tue, 31 Mar 2020 23:06:01 -0400
X-MC-Unique: msfs1RlVMrGNVCdcu8BuNw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD85E106F8AD;
	Wed,  1 Apr 2020 03:05:59 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E29B460C99;
	Wed,  1 Apr 2020 03:05:57 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:05:53 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 1/4] Staging: vt6655: Limit return
 statements.
Message-ID: <20200401050534.728a5c89@elisabeth>
In-Reply-To: <fe417533b66d29ef6ea19128b38b8c8de7757ae2.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
	<fe417533b66d29ef6ea19128b38b8c8de7757ae2.1585694821.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 16:16:43 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Limit return statements within context of switch case to improve
> readability.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

[you can carry this tag if you re-post this patch in another version of
this series without further changes]

-- 
Stefano


