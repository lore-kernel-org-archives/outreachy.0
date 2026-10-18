Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D815548A2DF
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 12:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792327522; cv=pass; b=t35VK1DY/bCPINWfoB6oOCXAatJYJASHnX7zDMq9YiZwwChzpkN3sYzirnsP/9qNX4afxWmioZ3WvTPLPfmRqszUzt9TwC77IUaUHQRaHOZtmZHqUUdesbmALkThqZPNGcJ/X0daSCU+LmlmrbDSpmq1Z0ly4yI9X8pTzej7B7c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792327522; c=relaxed/simple;
	bh=ZcASPMFh4Dgw2AMBTbJGkLhMtLrcN7vyLN7Htio5p1g=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=aKZXi+nPzO+1Cg+uBWLO5OCh8biaT8yFIdojK0rq0szoDOr2CIn3KN63CjF8G7R4UzYkgGhmSNlv59h1mDei0D5jlDRKIcmohmwoRksTtc8YCfvQH0+Z1S/CbxcilFRRvphLMpJugjglx/5nVR6GJtZg66oLAUxqThOMdz5PtDE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rcx7R+2h; arc=pass smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rcx7R+2h"
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6b1aa29e06bso2017789a12.2
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 05:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792327516; cv=none;
        d=google.com; s=arc-20260327;
        b=k0jvu1HwpDmvWzjxG6FSupADUd1b8BZJvJPoRkAtx/rrTqv2tveVQ7ncDEXVaDH/iD
         WecMreM3pTna0YFv4Lfw4D+lGA3yoVKrYO40to3L8iC7xfzbWcXVQqcjwzhpYOZDnQQv
         gTJEoygVdVZAh82N6dcjynPgbkhtNkc7Ofoy1jS2ELkDK5Ubqn78D4bThVNWK2N4dsz+
         pWMZVZiSuaSnMcn9so/sZcScGzoDVCwZu+Uy2kNsJiJc9OMtVuhHW0MlovixewoBEBp5
         uMdroznHvCC0BcN04uM/MsZ8RWg7fNogyFj4F2qmepqftF5ZcYIJL0qYF6kU+wzyW4on
         6buQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ZcASPMFh4Dgw2AMBTbJGkLhMtLrcN7vyLN7Htio5p1g=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=Pulii8YbjozOFaqbfFRu8KwCYpvEnBeMgcvv8X1WOLEu57bcwnZ4B3qqfpe+wcR9RO
         uwvtdIDGNeiLI+GSbAdah2XcXGKG1MNnsmzVRPlaJdAtyjuJmkTYO6xchYJ+bV2v2uIs
         ONnHqC1N9Zk5z5GjU+ZBYSqIxQusiZ628iPsggxr7wrCqCDiVDAW3gS/R5Ict6TvIBnd
         84Ia/BroAi2NmoXnMsuRbv96XVz2TxBc4Q+HZQFxb0Al3qwf7DZ4Ohnbh1EebmXofVqd
         UMlmZ+tNF8BUnKVyGFmTWBU9XP58EN9qHYYd+ON55Q57w/q8oqME98oHQ0DvHa/DmetF
         e8iQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792327516; x=1792932316; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=ZcASPMFh4Dgw2AMBTbJGkLhMtLrcN7vyLN7Htio5p1g=;
        b=Rcx7R+2hap1ddJmxtDHL7zwljF4aor0UpMdqWZl8znD2B0jAkCa0PjWKHoNX2aDNJ6
         DZdy4IaPDT8j6tLC88E1fPfyy/nUAxvykxaHy9bIj5NU2DNBXIpSFDpWBY+xIPNvd56s
         X3BejH8+c9T0+GodaRvmLryaqROSUVnpmn39aIeuoKx5gLYP1fbIkO/AoR378qoP9yrS
         qRtQ+Dsh3sZs8/Dx9dir5H8gckXJ6oS4ZJhn9Te7Tu9tDRayFNtnNaRdKS42icIFYJlg
         8A/xk00dZACWeVP0V4HLGxBDUza8g3XcW2S/xTZdJ0UELfANjqJ40XUS5ulcQBquF7tO
         3tEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792327516; x=1792932316;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZcASPMFh4Dgw2AMBTbJGkLhMtLrcN7vyLN7Htio5p1g=;
        b=rc+ShYT4xEdqz9mdgub2sIPS6Rn6B9M1nMBeVaEi4e3mb8/Q3cXn43ZYYP/UbhQ2fK
         gypqSSpVc3t6rHeX7Rve9OZObJLU3M7uE+jqWog5bHhm6uVcVrY6imA6SzYwKTGWmzn8
         l16LXQ5KCyQd0GLJLS75xIiww/CYNxr1y06dGJB/Z0GIehnLNJ+3SsI6MoOhPP0ExrSe
         lLr6bnj6hibN7jnDM23SaexLP9W+vU6ZUA/mohXutuizsAugIwEcZdaXQn2eEkTN8dzj
         pJw9EJdQCxAWiK4b4Bot7QGQGndlTMCaKomOyMsTZlkhplztGKo9EcHvyHoz/oJO/PAX
         K12g==
X-Gm-Message-State: AFq9FYLURk0odT76MkLf39UE03/9sE8K1NqgL0qOM9C1uNXWx5+OSATh
	2DpN4KwWJF0KuVKJvuT0IBlwBUu7IVazNCc39pcvkN6UMmAskS2DG0dQrhyVtewDmPggq3XKUeJ
	XhQIb7eZMcpH2q5j1Sd3wu29khOfXdlzV1DC0TF16Cvolu04=
X-Gm-Gg: AYBFou15ATwZsr1i1mlelPJwnv5drFYwkf/8tWpNjqfJvd0e7oAIjMghRs1up+RXP5F
	bckHD9jzna/atzfWPbGZls8HoAChf4kSLqkpGLeTx0kBlpdBwyWuHk7B7I6h5q2kuH8zf+gsIHi
	wQz0Z65+fINNIipfmNFDl1EWJUh29mQi9Qm9aChHFnD4MypnDLE3UZpY7gPBAkqovTgEAsi5ZMr
	ByB3KJIRqj1HbwuqaJkKIhh7KVMWrc+h5b4WEd3kM2p8jaJnFwsXA43XOxY49Vicm4lk6GJGRbC
	+FNRxm22HmLN05uyXilJmx7IVjVAh6gmN5UVzcm2jAJBvDfuVzJBEwQ=
X-Received: by 2002:a17:907:d08d:b0:c29:5d41:dfe8 with SMTP id
 a640c23a62f3a-c419fef7b80mr300027166b.43.1792327516486; Sun, 18 Oct 2026
 05:45:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: BASHIRAH LAWAL <bashirahlawal017@gmail.com>
Date: Sun, 18 Oct 2026 13:45:05 +0100
X-Gm-Features: AclHuK_N42tppvstpWQaKZZ0Nr-_qPwy8naTeb3o684q9iza5eG6q29Ce_CnY5o
Message-ID: <CA+-H0e_z7o4=URXvOtg1f+hBWFX9x4fKb2MmiGUnbE+naFBEgA@mail.gmail.com>
Subject: =?UTF-8?Q?Outreachy_applicant_=E2=80=94_Linux_kernel_first_patch?=
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

My name is Bashirah Lawal, and I'm an Outreachy applicant working
through the Linux kernel first-patch tutorial.

I've set up a Linux kernel development environment using Kali Linux in
VirtualBox, built and booted a custom kernel, and practised modifying
and testing a driver. I'm now exploring the staging tree for a
suitable first contribution and learning to use checkpatch and compile
individual driver files.

I'd appreciate any guidance on suitable areas or issues for a first
contribution.

I'm looking forward to learning from the community and contributing.

Best regards,
Bashirah Lawal
