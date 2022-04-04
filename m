Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042C815A3
	for <outreachy@lists.linux.dev>; Tue,  5 Apr 2022 06:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649140117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=galeP/y/YwbqJSjm9PPEw+il6Sd4MtBL6LNP/RZpjVI=;
	b=IgBe/uUoOJYUXAk1MMMtZQZRM8BISdvtQ1uAZbtegRWJDanlEQhlagIrZGsaXyWnr4pmCc
	xcd16OggFLcPTFCOjDHR5NGYGZbwwgW5UWy1F682obVW78QlTIj018Ain1cm/TGBq0USoQ
	E1aqMp5a0HxaCy3cUo3LFNvNhL4RCAs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-222-roajJVFhMX2Aow2CGNL73Q-1; Tue, 05 Apr 2022 02:28:34 -0400
X-MC-Unique: roajJVFhMX2Aow2CGNL73Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E28780A0AD;
	Tue,  5 Apr 2022 06:28:34 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5184943202D;
	Tue,  5 Apr 2022 06:28:34 +0000 (UTC)
Date: Mon, 4 Apr 2022 07:48:06 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: Roopa Prabhu <roopa.prabhu@gmail.com>, outreachy linux kernel
 <outreachy@lists.linux.dev>
Subject: Re: [PATCH v3 1/3] staging: rtl8723bs: remove redundant braces in
 if statements
Message-ID: <20220404074806.739c9fc3@elisabeth>
In-Reply-To: <CAGe6so8TdMGFzuGGwR9n5KS1iQjPsxq+VUMp1HgGBn5=eC4b-g@mail.gmail.com>
References: <cover.1648840991.git.sevinj.aghayeva@gmail.com>
	<1a9f181f7f30f71c03e6e88df9fb8c17a298a192.1648840991.git.sevinj.aghayeva@gmail.com>
	<Ykl/4mIsSzaPRr+y@kroah.com>
	<CAMWRUK4BpTFf8fGoANjjOEZ2dxCws=QPLPJ166JPgnsdsy+pmg@mail.gmail.com>
	<CAMWRUK43UO-nT3-8G1GBt9ZzTqGo_j2=_YyE686-8H01ub3meQ@mail.gmail.com>
	<CAGe6so8TdMGFzuGGwR9n5KS1iQjPsxq+VUMp1HgGBn5=eC4b-g@mail.gmail.com>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Sevinj,

On Sun, 3 Apr 2022 08:40:08 -0700
Roopa Prabhu <roopa.prabhu@gmail.com> wrote:

> On Sun, Apr 3, 2022 at 7:25 AM Sevinj Aghayeva
> <sevinj.aghayeva@gmail.com> wrote:
> >
> > (Sending this only to outreachy.)
> >
> > I just did "git fetch origin" and then "git rebase origin" while I was
> > in the branch that didn't apply to Greg's tree. I got a merge conflict
> > in ext4/super.c. None of my changes have modified ext4/super.c, so why
> > do I get a conflict on this file? Can someone please explain?  
> 
> The file on your branch is still different from the one on
> master/origin even if you have not changed it and git is not able to
> merge the file automatically.

...this can happen, in turn, for (at least?) two reasons:

- true, you didn't modify ext4/super.c, but another commit (not
  yours) touching ext4/super.c also affects one of the files that are
  modified by any of your commits, or anything you have in your local
  tree. This is probably the case here.

- the upstream tree, itself, was rebased. Most kernel trees upstream
  have a no-rebase policy, that is, once a commit (including merge
  commits) has been published (pushed) by the maintainer to that tree,
  that commit will never disappear from the history. This should be the
  case for the staging tree as well, as far as I know.

  So you can pull, at any moment, and that will just "add" commits to
  your history, never modify one. The rationale is somewhat explained
  by:

	https://lwn.net/Articles/328438/

  ...but not all kernel trees follow this policy, for some (such as
  linux-next, or nf-next) it would be impractical and of little value:
  they're not trees people are expected to do significant work on.

  In that case, contributors can expect some small disruptions in their
  workflow: at some point, their local trees might have commits based
  on a former upstream commit that doesn't exist anymore.

-- 
Stefano

