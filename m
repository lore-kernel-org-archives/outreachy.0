Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A173C2901
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 16:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650643945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uIPnwagJX69x44ABUFbSfhFlYEzV9ta9VpKcNC1fOBM=;
	b=cgsfKd+ouMtK2l+0C0v/5sfmTrFCg6cy43IPUQ+Ju2c2/40VMlxLkbyQL8sZQKPgqLqVqj
	ZWphBSLiONPD+G2PZWc8ksQlRGrDNd6Ql8tMeatu1M8/yV4/ZACf3ncbFMvjDJZsrXoxbL
	rWmAkKxFp+qNrCn6Bq6ws9hm3W5+0Zc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-3cPBRE8HOT-Pztro9QKTZA-1; Fri, 22 Apr 2022 12:12:23 -0400
X-MC-Unique: 3cPBRE8HOT-Pztro9QKTZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5359C1C04B74;
	Fri, 22 Apr 2022 16:12:23 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2391C145BEF9;
	Fri, 22 Apr 2022 16:12:23 +0000 (UTC)
Date: Fri, 22 Apr 2022 18:12:19 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] mbuto: quote variable assignments
Message-ID: <20220422181219.1a53b806@elisabeth>
In-Reply-To: <20220422155559.GA356670@euclid>
References: <20220422155559.GA356670@euclid>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 22 Apr 2022 11:55:59 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> Add missing quotes around variable assignments.

Applied and pushed together with your previous series, thanks!

-- 
Stefano

