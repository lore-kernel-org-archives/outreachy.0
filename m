Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752917B
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 18:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650047059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a4dB8RHCPbLAQLkoAiUX9CIYbPv3li+VIHcJU1Ukmy4=;
	b=NqdbY7AHI3S21c8wYIGdi88lUsRK/FADQkNFEdK/qoeezK0SujB+VlpUnAJuuIlwtKk1oZ
	WmBldXTYe8Xc39tkcx8JbOCFTmnBDlXdc/pt6oLknvNj8cR2ZYcINjhrsyWnCblNESxIy2
	PmTFjL6MufMepkYTSWOKFOKir/RXF7U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-470-uxdvxXotMy6w4Z5LtOG-zQ-1; Fri, 15 Apr 2022 14:24:15 -0400
X-MC-Unique: uxdvxXotMy6w4Z5LtOG-zQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42863101AA42;
	Fri, 15 Apr 2022 18:24:15 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EE2F840D2848;
	Fri, 15 Apr 2022 18:24:14 +0000 (UTC)
Date: Fri, 15 Apr 2022 20:24:05 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415202405.53ffd848@elisabeth>
In-Reply-To: <20220415170543.GA1251615@alison-desk>
References: <20220414230923.GA594872@euclid>
	<20220415171019.091e123c@elisabeth>
	<20220415170543.GA1251615@alison-desk>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 15 Apr 2022 10:05:43 -0700
Alison Schofield <alison.schofield@intel.com> wrote:

> On Fri, Apr 15, 2022 at 05:10:19PM +0200, Stefano Brivio wrote:
> > This is really valuable work, thank you. I took the liberty of fixing
> > up a few things, listed below, and pushed:  
> 
> What repository is this in?

https://mbuto.sh/mbuto -- we're tracking project-specific tasks at
https://board.net/p/Outreachy2022KernelNetworking and this is task #7 there.

Documentation is still a bit lacking (I'm working on it on and off), I
hope it can become finally usable for other applicants (to run
kselftests without semi-complicated VM installs) in a couple of days.

-- 
Stefano

