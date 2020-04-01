X-GM-THRID: 6810513252473110528
X-Received: by 2002:aca:4fcc:: with SMTP id d195mr1447005oib.99.1585710119172;
        Tue, 31 Mar 2020 20:01:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls7415847oii.2.gmail; Tue, 31 Mar
 2020 20:01:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypI/qHVpWHyLznpjPf1qqOF4QxjN2kFEZrme8c8Q6Mgr5uTKgCAzPULiOkDRef2ZtaRoaDpT
X-Received: by 2002:aca:6042:: with SMTP id u63mr1417328oib.179.1585710118173;
        Tue, 31 Mar 2020 20:01:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710118; cv=none;
        d=google.com; s=arc-20160816;
        b=0U4NxsJL5ERHQa3puk4EWpsZhOJ7mEDQ5YzvSDMQXaGoFZ/3o7H/xXAiJYb9u4wiaW
         /G/7zYwAs7iScBjoqpuQBGk6ReQrMENGEMlhf3jM2nS7dwIxX5XOk9RLaOlSCqihHmHo
         nTYCq7RJoKidhnc+lHvk1t0eCudi+h6cPer6JUUNHi/6BDhel8adnNVP0YdSwVWJja1W
         a5vSJ7RuhJScaKCaexVAkPuPPlsEf0Rzo0Ua0DzksLQdJanKt9vAwUiVltWk+fF2AqrU
         c+/v44W8gVJRYYFojSvN4rCwNQj6lKqYrxCKv5M9dq2j3vGjTa9JOOnl6W2/IKIH5KKS
         vVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=c6tVRzExF78u1FWM68a6zdhJH0HQnsFcYGIxAqY1JZs=;
        b=S/9JTA7LIFgOi+/lTUIOizhG8W6G9GvNx8oCNVCsim5U9beSYwAjXiEEKcws1EjhvD
         F/mvN+SOYVsWkj4inm3WcbfN1SMEBBvVbRUoKP8Z9z4o5hRbWzzm825jB0Ei4Bc86hQ4
         S/As871DuDEcvBOd846UZT2RWWKHqwBqzzDa8fIVlVFDv0Q2VuF+4BrIrEggw7JxmPil
         ZGv6MdzbXxIg32ksJWdTkyxiIf/Bzde3mUpEoTmYIyuFNSnWpVq/xnkG2wyl6earU0NJ
         IgERrRXaRLL+Y5HHyDzJuv4TT2x+HA7CKap8LaiNNsaSnYGhXv2qIu8cUjzjLtlC1dYi
         aBXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="KIMItH/r";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id a3si48141otf.2.2020.03.31.20.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:01:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="KIMItH/r";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c6tVRzExF78u1FWM68a6zdhJH0HQnsFcYGIxAqY1JZs=;
	b=KIMItH/rFGDqNDxzLstEamMt35f8JkKwB3+7pzO8MCWIn7nJrT3w/BxtotKfdmGFwAIAHs
	iFXqSKFQJB/36++yPKTCNkxaBIIj1s6KnOTwgEitua9Tg96ZdH7c8YfuFDz8OnoiOkRIZU
	UmYTU8N67HoENzYLvSswm5mO3D9vYJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-HVl7yBRSMcOKpq5D-QEx0w-1; Tue, 31 Mar 2020 23:01:55 -0400
X-MC-Unique: HVl7yBRSMcOKpq5D-QEx0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16578DB65;
	Wed,  1 Apr 2020 03:01:54 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E13075D9CA;
	Wed,  1 Apr 2020 03:01:51 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:01:46 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 rspringer@google.com, toddpoynor@google.com, benchan@chromium.org
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: using octal
 permissions instead of symbolic permissions
Message-ID: <20200401050146.7fe3c1c2@elisabeth>
In-Reply-To: <20200331230940.GA12376@siyah2>
References: <20200331230940.GA12376@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 1 Apr 2020 02:09:40 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Since octal permissions is preffered to symbolic permissions,
> octal permissions is used.Problem found checkpatch.pl.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


