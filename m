X-GM-THRID: 6803736049205903360
X-Received: by 2002:a17:902:740b:: with SMTP id g11mr1949222pll.166.1584406246959;
        Mon, 16 Mar 2020 17:50:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3ls3181548plr.1.gmail; Mon, 16
 Mar 2020 17:50:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt0HqVsmb+yRiHMUPPDxNTYmZB2aPLjJmi6Y9EA+h2DuWYhU6PPXElrF568X9wxZ08M9EFj
X-Received: by 2002:a17:90a:346f:: with SMTP id o102mr2332292pjb.162.1584406245521;
        Mon, 16 Mar 2020 17:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584406245; cv=none;
        d=google.com; s=arc-20160816;
        b=YprZVLOo+sZUQ6TO+O9PUGxL9fTlVTDxXcucNxa+QSzD3Q4HuBxIL5S8wkm6CngUWl
         SX2r/pCTEmKFU7BBKuQWF3YShRpN8sCRJtRB6Cj71KY/A1d/Bw5EUt8RAuwMVvQp9Mnz
         kQwOst0PpiH1dOIdRJWUXIQLSRj1+qez9+c11uraXk+xpOCsfSnXAboHFF26e4eE/v52
         1ZQrA5dxT5xp4k7m1jLFeB7zE5QM6oib+Gqq6CNqJ/g+bi4AXMHaSsKrjRmTyrXrXqhg
         GY2N6Tl4MAoTy4my/+wtpPofrjAuzVY5YkjOpKOq7yp5CinBlIqbQ3b23K3uJsy/bzYv
         5k2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eylwKSGtQQ2tQiBFxA8IPKj60krKNgSMV1bTSaAc7kw=;
        b=yIRjiHKWkh3RmgvbsZvUi9CsV5N+HniXeLdVPd/FKGJjKwa68WoMisb4I51CMhp9oe
         AjmNtRCxsl/RsVcWrT1YEFozYSsKL9qg3QlW8ykoZn7X1a4vSpywgTfc8PgEgvI+KUJw
         fon1f0ML15tiHVQ8eK2WRwIb6Nt/oA84ZUUWBTKzwFT1lUt6QsCWLrgfIpjv11MW24oi
         2M8sJAcSkeilxa5gbdKh5D8AvnacL0k1Ehm3VN7QLAHg7RTx5Y/7QbLMgRZdD8im2Vef
         UkRKTdn7jVxLQ+fZirm9DaddftdQu/IQPASc019lOWum4i85+XtU6UMmxBMZpwYHLANI
         wbaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i3XZm36F;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id ml9si116070pjb.2.2020.03.16.17.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i3XZm36F;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584406244;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eylwKSGtQQ2tQiBFxA8IPKj60krKNgSMV1bTSaAc7kw=;
	b=i3XZm36FJnV5Fk4qbilVFJMz0KZLm1P40POB5z+O0SlmMT6PAlEXFhTRyRch89/NVVZxds
	i+9lxFPnW60rXKXW4JfdWyGT2Pj7o5hVlnIHN8ce1vET8kw2e11ZEvuaPr9mcpSzfpmZES
	ThTdxvtfVxRhmSri5Jez7Iewl5QHNRU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-e62QRTMYNdiF8mboFDdCwA-1; Mon, 16 Mar 2020 20:50:39 -0400
X-MC-Unique: e62QRTMYNdiF8mboFDdCwA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5058E477;
	Tue, 17 Mar 2020 00:50:38 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 212FA92D0C;
	Tue, 17 Mar 2020 00:50:35 +0000 (UTC)
Date: Tue, 17 Mar 2020 01:50:30 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Better Fix of
 long line in makefile variable
Message-ID: <20200317015030.0de5ef50@elisabeth>
In-Reply-To: <20200313165018.GA3172@tulip.local>
References: <20200313165018.GA3172@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 22:20:30 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> A simple fix of long line in makefile variable assignment.
> Found using checkpatch.pl.

Same comment as v2 for your rtl8172 patch: I think "Better" should be
omitted in the commit title. It looks good to me otherwise.

-- 
Stefano


