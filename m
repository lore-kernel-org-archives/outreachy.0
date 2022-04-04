Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457FE15A3
	for <outreachy@lists.linux.dev>; Tue,  5 Apr 2022 06:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649140116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KEKlEv58ZHkzNhHBvSzA16QuYkhZYoS535UPRn0P2DE=;
	b=JGatyc2Mt0Fvvj3Gpkg7qEUd2zyeU8c5v265V4bXP+gwrvdxfymiHb/s6ifZ0Y2B3skg1j
	bF/MlYIeenCcpwdQxGASy8Wo9I06LYBSfVnKh17UE/EfInSQjfTDQOQKe9T72HR5Vj9uGk
	IL4V8Hci98BM1ZCTTlqyYs2ReARn02Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-297-aKsut7aYMjmvrYgZuOKKqg-1; Tue, 05 Apr 2022 02:28:34 -0400
X-MC-Unique: aKsut7aYMjmvrYgZuOKKqg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E0AE1C05AE6;
	Tue,  5 Apr 2022 06:28:34 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C24C4082381;
	Tue,  5 Apr 2022 06:28:34 +0000 (UTC)
Date: Mon, 4 Apr 2022 07:47:56 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Testing Only - Ignore
Message-ID: <20220404074524.40d08e4b@elisabeth>
In-Reply-To: <20220401221251.GA1188492@alison-desk>
References: <20220401221251.GA1188492@alison-desk>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 1 Apr 2022 15:12:51 -0700
Alison Schofield <alison.schofield@intel.com> wrote:

> This mailing list is very small (since it's so new), and friendly,
> so I'm spamming it with my private email test.
> 
> Not even sure this is a reasonable test.
> 
> Mail in which I am in the To: is not coming through to my Intel email.
> For example, Bruno's last email I see when I browse w Lore, but I 
> didn't get it in my @intel.com INBOX. 

That's, most likely, because Bruno's email had 162.254.200.130 as
originating IP address -- it was in Spamhaus' XBL list a couple of days
ago:
	https://www.spamhaus.org/query/ip/162.254.200.130

and you might have (as I had) a corporate "spam filter" querying
Spamhaus lists.

That doesn't mean that Bruno's machine had any reason to be in that
list. That's because of another host with that address in the past. Now
it has been de-listed.

On the other hand, smtp.subspace.kernel.org doesn't use those lists (in
my opinion very sensibly, but this is subject to debate), so it
actually went through the list.

> It reminded me of something Stefano mentioned about mail getting
> de-dup'd and then you wind up with nothing.

That's just Gmail, judging from the delivery chain reported in
the headers of your emails, you should be safe. :)

I have some procmail machinery in place to undo that "feature". :(

-- 
Stefano

