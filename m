X-GM-THRID: 6807107593039773696
X-Received: by 2002:a63:ff4e:: with SMTP id s14mr10703203pgk.269.1585530148632;
        Sun, 29 Mar 2020 18:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:d78e:: with SMTP id z14ls13856502pju.3.gmail; Sun,
 29 Mar 2020 18:02:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvsuO0Mld/LdalWg9A8BmItlaj6Ixbuo0XVYtHehEO+Bx/6/pyH6hsoKFZyXbqFxYrxHcLx
X-Received: by 2002:a17:90a:930e:: with SMTP id p14mr12838806pjo.159.1585530147221;
        Sun, 29 Mar 2020 18:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530147; cv=none;
        d=google.com; s=arc-20160816;
        b=Jk4omN2lPI5rgKuu6gNvgEZep6bEqYQReXVolK3OGq/ifB/DCgdrFXd4xES7QUvVa0
         P80xM0dNlsMkzEYcl1xN2KNt1EPix87iX/dacH6XCQNfGbk03HrdTi63M75xtychdJfz
         T+CE70AAIVKTJuT9ckR86ffPNoFEbn0xrQPCcYW0fd+D3rlcVPDD3r7sCZCUKjsCLptV
         KLzzUvJh8VyDcJrauXjdWs6A/vuD4c07JWX2G3vFqaQgDxoBoi90p+mGlJNSZoFREvjA
         wV88US77PEAVo8Vr5PLHP6GzFaixvvSvhHy0xT8kwJR1/xvjsv2Cp9pYLV2KSpB32ePq
         uSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=NELcZnOK66sFVzSUixVSlxPRT/+kWqWCQldBKbT6BnE=;
        b=dBEcha+1BwhlTTXHcJsreBIpD5pVaXEkTzz7l9bZvIE9LAugj7A0+IGOZsk0mJfPXL
         GWwicj6V4R4zzHxLQ2dZDzKD024FP2tWTvBYXN9x3qXvNNoNvh40x7Y9OzrEDjWSW0F+
         he54w78czxVbE/2AVDNFZLuy4R58eOrujiJVAOsDHBU5zknTl2/NHAf3CAJNi4uEhfgP
         Qqh9kgwxVSzglUokyo8K19lfRJMp30OsTBZnzuaAQUGR7F3YNkgdGdCIiOpfS6tsIxKg
         nbBcFKTTXvH2w7/JEAyx7qJZ/jgBICFvcgaINTdDyYkS2WkHMjwDCUVRe9g9+8GEWQhz
         qJfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BiFWmkil;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id 138si814549pfa.6.2020.03.29.18.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BiFWmkil;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NELcZnOK66sFVzSUixVSlxPRT/+kWqWCQldBKbT6BnE=;
	b=BiFWmkilspjlzPwoRHTUXO4npNjovsVQaAvvYwXpJ+/jBXmwURI3BhlVKpFRxr3W5oxFUz
	OkmkciHsE8L+xYlRa3xyMl4A6svY6m+sUMsNgd3V32DXZiNbdchOa7qtZwl17JWFw/8X8S
	xcAoG3RnZdF5FWc977FazZ3hKi1dy6Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-Xd8KoS7LNw6Yuo-hKCH1xw-1; Sun, 29 Mar 2020 21:02:24 -0400
X-MC-Unique: Xd8KoS7LNw6Yuo-hKCH1xw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF10818AB2C0;
	Mon, 30 Mar 2020 01:02:21 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D92E05E240;
	Mon, 30 Mar 2020 01:02:18 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:02:05 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, Ian Abbott
 <abbotti@mev.co.uk>, H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: Re: [Outreachy kernel] [PATCH v3] media: staging/intel-ipu3:
 Reformat pointer initialization
Message-ID: <20200330030205.2782c889@elisabeth>
In-Reply-To: <20200322200915.GA14687@deeUbuntu>
References: <20200322200915.GA14687@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 23 Mar 2020 01:39:19 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Reformat pointer initialization to make it more readable as per the
> coding standards. Problem detected by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


