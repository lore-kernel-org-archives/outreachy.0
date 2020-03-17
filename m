X-GM-THRID: 6803926658306801664
X-Received: by 2002:a9d:6310:: with SMTP id q16mr2769745otk.147.1584439232206;
        Tue, 17 Mar 2020 03:00:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls2321004oif.9.gmail; Tue, 17 Mar
 2020 03:00:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFrmNyLl0rmXsnfEYAVvcIpSqbyKj4UMjl6ZuU9QEx1HnaDjtQaS63jbmyzPL0xHpMB1xV
X-Received: by 2002:aca:ad93:: with SMTP id w141mr2971589oie.54.1584439231162;
        Tue, 17 Mar 2020 03:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584439231; cv=none;
        d=google.com; s=arc-20160816;
        b=jrsAZhzm5s0K2Ua7jArhxpYwS3R3Rdds5VSzlNPtvl3JGfVZ25cyHbYIfSy5CUXbwg
         vdeVE2VAHkiwwspHMTVrvB+dePgkqY/LCofMkvm7hPdnJFOsigKrFw6kHHSZOAVlLale
         Tf4IxIeJ9/vpIWTDZta8/EcvbgvX+5eB/TDi6GD/tfI/PCSC5dX6ElSRkRLHnl33TYID
         Syjp6Xsg0oRudsbc8W2lCXnEElFGXwZIWtuvDRLmDua0IwmzFDEh9OWxF9s1LUhGTZBR
         +0tIOx00OQvwu8k/vrz9jw6ObLJzus69K7QNT9HFp4ck4ms26ed27/dxEJYV8wofHdX+
         xYSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nZPuyDq4FowiaGE+EwE0n16EuWwKkMN1YpX6O0aoLx8=;
        b=Jo8iPpw0tNIHKD0cVp62VBeINCan3x7QaAIijLKp4/tK25S+DQXNy5lyr25Yg+AWGx
         WUjRljgiggRmVicnZ+SsEWEUoIxovKAjyccf6IFoEY+YVpEBFAXbGFURdGa6Uz86a9/C
         qOzJQoompkgYqWeTUmR2qpUrMIHOwyQAZMaQzRSWiBPUOfRkNaQJSXVX9iLOIrkf1FuW
         PuydHhOabN/mAMI5zTJR/YkVOkm8LY+pJ/fL0yorNvxNBjM0eINLLp+ITa+5H5psgZQG
         cMPYrz9s5K/cmoel459tLZPF6zL6nZ2Cb+XnLzaY8H10vBMjz9k+0ybEDOwNNc7PFQpb
         ZGUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B1e124FC;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id d11si248357otk.5.2020.03.17.03.00.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 03:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B1e124FC;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584439230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nZPuyDq4FowiaGE+EwE0n16EuWwKkMN1YpX6O0aoLx8=;
	b=B1e124FCu6w723SZhf8IqzW51HNWONViPjTSFN8+PWzqNLd/0ikcBoc2yGJIRs5rE2Rbkm
	KW2iNTPBnrXB+6q8SBJ8tdqkBfLR5v6tBj4ytyq/yk/MRnbtFhvtO7Rc4Xh9XV7Bu/S13k
	RzYnHrDJB7Q5KXQmyiKS8OX8ST6OwRY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-tDu-PExqPBK1jL47TbzS0w-1; Tue, 17 Mar 2020 06:00:23 -0400
X-MC-Unique: tDu-PExqPBK1jL47TbzS0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 548F31005510;
	Tue, 17 Mar 2020 10:00:18 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 212BE5D9E2;
	Tue, 17 Mar 2020 10:00:15 +0000 (UTC)
Date: Tue, 17 Mar 2020 11:00:08 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: interface:
 vchi: Fix longline comments
Message-ID: <20200317110008.2152e405@elisabeth>
In-Reply-To: <20200314050955.GA1504@tulip.local>
References: <20200314050955.GA1504@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 14 Mar 2020 10:40:07 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Fixes long line comments in C header file.
> Found using checkpatch.pl.

Same as Julia's comments for your:
	[PATCH] staging: rts5208: Fix long line in C func call argument

Also, C99/C++ comments (//) are not allowed by the coding style. As you
are rewriting all those lines anyway, you should fix that as well.

Please re-send.

-- 
Stefano


