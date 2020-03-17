X-GM-THRID: 6803761138305597440
X-Received: by 2002:aca:bac1:: with SMTP id k184mr1732118oif.157.1584407436489;
        Mon, 16 Mar 2020 18:10:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls1333060otl.6.gmail; Mon, 16 Mar
 2020 18:10:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDOnrOnlEj9JwPi+SWGXdo10Nf6zk0hElX0c6dvXSQH5Eo4xl1m2X6Eg7Sb6HifE0supw3
X-Received: by 2002:a9d:4e3:: with SMTP id 90mr1713036otm.261.1584407435086;
        Mon, 16 Mar 2020 18:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407435; cv=none;
        d=google.com; s=arc-20160816;
        b=SCmlvr/lneQhRvrBKd+Vu/pq6IaRLy6df5GKszYFwixNgNfDlUJkksczmMhiOaXZgO
         IeVn4+lRfVI+1ceIfOPv2yXdzcsWZgdz5nbhDHm53f8MtiHCanrUTtaouR+7+IyGkPSX
         /nmXIlcvKIYXTUC7QqmuKjeOqG1i1fLJbS31uCCSSld/taKYedh+NO4zTzS4jDXM6Jy3
         yIVamWiy4iDpN4Z/gCX5yJzmgC0E9be7WmoRdEWBn3o9Qcf8UFZu+V6w0cuZYVW5YDsx
         bnK7sCTE1skHpgagYwZXXWx2FKbW73XQ1Ql2BFZ89VCwHSETtDB2F1ZoWG1caq6ksdlm
         X3Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/jfColGgEgXuIlEIcvPDbI930d/eWUR9O2HR7dTlg74=;
        b=FBA/NC6qRTioey/aI7EoQRYfhUbJl4hAkQAifrAtcZLhjd0MDaOdcX8/+0e9OB9SV5
         LxqmvH0Q5QiKQJGV8tOcPmp6Ue1gjM41m8cYRs3RkU18dbm/Onmx0h5uC12WeTWZKBqu
         HRpa6Xt3Cy4mDczwmgWtE4VBS2F2/mUDXxg2KH3lnzgMbU0fwiid4cu4V4H4gqV3lGZ5
         RCYmtDPPsWdp3NTH+7l0GBBe/kUqDmNsEv8FCBx/XKE+FqELNGyvvQi83MswJTZ4XUEL
         Fn19rBmAwgPCZ79ogD6u7RUUq0O1PanxxICzrqGokKmVbv7fCiuP2v5cT28D18hSzyqn
         BQGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QEb+KQZj;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id x23si143398oif.2.2020.03.16.18.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QEb+KQZj;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584407434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/jfColGgEgXuIlEIcvPDbI930d/eWUR9O2HR7dTlg74=;
	b=QEb+KQZjMP2NHurp5MsuYzSKDwbNHVoZrxReVnY6rhJceol9zSWvEjCkLPsKpgCdB59IOn
	gT+3aV9RgEM4COjYfeexeuqY36GBZ7ptzPMjTiYx5hKWsO29RkhxRixTIiHSb0nGv/ny+C
	sY1oAgCQ22Xu8jMOCOe7JlqR0n9LeXg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-179-xvmq5VhQNOidLFqqaSd-PA-1; Mon, 16 Mar 2020 21:10:31 -0400
X-MC-Unique: xvmq5VhQNOidLFqqaSd-PA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DDBD8017CC;
	Tue, 17 Mar 2020 01:10:30 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9979B7E305;
	Tue, 17 Mar 2020 01:10:27 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:10:20 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, mchehab@kernel.org, sakari.ailus@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging: imgu: Remove extra
 type detail
Message-ID: <20200317021020.04f3157d@elisabeth>
In-Reply-To: <20200313182754.GA20501@deeUbuntu>
References: <20200313182754.GA20501@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 23:57:58 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Remove unwanted variable type detail as detected by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


