X-GM-THRID: 6809858298158776320
X-Received: by 2002:a92:b0e:: with SMTP id b14mr13309150ilf.176.1585591386591;
        Mon, 30 Mar 2020 11:03:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls3711610ioc.1.gmail; Mon, 30 Mar
 2020 11:03:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuRUtzKtyWFnS4aS1c2JtSTqjMIGuQ8Sps3vIDUGBGHww95aPn/byGgrvp3RNEpW470UJAt
X-Received: by 2002:a5e:a816:: with SMTP id c22mr11705018ioa.190.1585591385563;
        Mon, 30 Mar 2020 11:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585591385; cv=none;
        d=google.com; s=arc-20160816;
        b=slsfy1PS1ULh8HXY6ltbh8f5Qc2NOeY3LCadQEGrzJ9eJOLoH4awASRtALLAVhWC0p
         NzLyTpgjqVE8TyIQDYj4L+Z8sPt+1Zk6QhxwvyPq2e2up9eFmxhJZ6Tgs9nWZ8ki4vYX
         Qby/IaywKTWFk7vAh7mUIdpHesmISd0IUzBLtdSJifu65es1q0gJfH9RAetvIbXofaQ5
         ncUd9siVIhlnZ9sRowGOKfBctw4WgmyhxrBYDxFUkk5ibv0hP4JkmS433RuUlKrEsp7j
         K3mRYUhG6fMIQtAwo73WT2fKuUmg5OlChFCaYE0WZph/z8OrvoxDyxDgDPQUJJPHdWfy
         mgEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mcovFZgTJFTzYDdmUInGHsAA8xN/TF7+9c9yFUHZAX8=;
        b=Xx0YnXQor7LXgG8KKFzTyzRvfCAzIbk9n9DhZfhO04v+wBrtXgiT01g5DCCBxBFuQb
         XDvmElOCcseuzbtt68fUP7bit5MCXbXUXWDzAGM879aZ+tkXZPVaPVb+T2i+l+dNF+d+
         RGnQ7jKXctL6W6ZPhSLj+mruOpcIlhaZA9xRUdxg8YO+ojvA77UD9rW1lCOKjqq6umjL
         3NPC9Cpzi7ipusmVYT7poB8sCZ1iOE0CLmbB9Q2WzMuts9gHOmUJ+0V5fqHsK3at253p
         w8Vo+LjtXJ9c2BPP3l3DNtLF7kLaLnfJWG6M8tlN3evi+7ubsYaQOXi0yedgBZr9Xk+1
         A58A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y31JTRg5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id m8si1117788ili.2.2020.03.30.11.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y31JTRg5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585591385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mcovFZgTJFTzYDdmUInGHsAA8xN/TF7+9c9yFUHZAX8=;
	b=Y31JTRg5Rd/fp9VuFh9QFSnmqyYShWubZq8+RUb0OWVR0Lwz3Xz+bPwQWRrl9eLsX8f51/
	kzL7mVc9Lfxk/PHn4GnDZFc984syAOt9RiEEC/8c7beM4ZDujxAH9Jj1xe/ZvrMLXfeHEO
	yNPT2NfjplqXr/HPHZaYBmjOzUWJ91o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-eUv_3XESMdShHSCW5iOeMw-1; Mon, 30 Mar 2020 14:03:01 -0400
X-MC-Unique: eUv_3XESMdShHSCW5iOeMw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 332938010F6;
	Mon, 30 Mar 2020 18:03:00 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A015797B03;
	Mon, 30 Mar 2020 18:02:56 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:02:47 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 julia.lawall@inria.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: vt6655: Format spaces.
Message-ID: <20200330200247.6aa70a9f@elisabeth>
In-Reply-To: <ac7a3d32b8a46198d48582e3e249c6e20d8090e1.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
	<ac7a3d32b8a46198d48582e3e249c6e20d8090e1.1585542564.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 21:48:02 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Add spaces around '-' operator and format long lines. Formatting issue
> found by checkpatch.

Long lines are wrapped, really, and they are not "spaces" as you
reported in the subject.

-- 
Stefano


