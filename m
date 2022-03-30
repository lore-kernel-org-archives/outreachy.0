Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0874366
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 00:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648600490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YQNN88c7iBYuQUDoF98nrBXwP9TWJ6U8KgkETBS9On0=;
	b=UBv8vMoKU3tEJJk9Pj65RsgTV/Gg1bufQdjtfQZor+yg0kGF5YYL83IJlm9DvW/6RNyaDy
	KnfT43Gx9wWWuqzTsUloNaEyrmkdXk7/7E8E/UAWFhYIrQ885CRFrGrTQxZu/7bj+FPPGJ
	vLFvgEUMcou7PDyzsl9PZmoWoE3dxNM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-114-O_EZSSIXNRGegXLc4CX3-w-1; Tue, 29 Mar 2022 20:34:49 -0400
X-MC-Unique: O_EZSSIXNRGegXLc4CX3-w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AEE91080865;
	Wed, 30 Mar 2022 00:34:47 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EDE09382A;
	Wed, 30 Mar 2022 00:34:46 +0000 (UTC)
Date: Wed, 30 Mar 2022 02:34:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: Alison Schofield <alison.schofield@intel.com>, outreachy@lists.linux.dev
Subject: Re: mail question
Message-ID: <20220330023434.0a265390@elisabeth>
In-Reply-To: <20220329235706.GA1172722@alison-desk>
References: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>
	<20220329235706.GA1172722@alison-desk>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 29 Mar 2022 16:57:06 -0700
Alison Schofield <alison.schofield@intel.com> wrote:

> On Tue, Mar 29, 2022 at 07:50:21PM -0400, Jaehee Park wrote:
>
> [...]
>
> > Q2: I see that my patch was sent
> > (https://lore.kernel.org/outreachy/) but I didn't get an email yet
> > from the outreachy mailing list. I was wondering if there is a
> > delay?   
> 
> Your patch is on the list. You can see it through lore - right?
> I see it on the list, and since I'm subscribed, it came to my mailbox
> too. There is no automatic reply from the outreachy list.

There might be another issue: you're using Gmail, and you sent the
patch also to:
	linux-staging@lists.linux.dev
	linux-kernel@vger.kernel.org

...which is correct, of course. But if you're subscribed to one of those
lists, Gmail will "deduplicate" your own email, that is, it actually
deletes any copy received after the first one. :/

In case you're subscribed to either list, can you check if your patch
is in your archives of those lists?

-- 
Stefano

