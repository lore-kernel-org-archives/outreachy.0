Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5916D210E2
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 13:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XTjQXd5y"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-405524e6768so20340195e9.2
        for <outreachy@lists.linux.dev>; Fri, 06 Oct 2023 06:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696599175; x=1697203975; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1UMSzCfGcOmd7x4iRnizH2gQfkoOfysUuwwepXF+kl4=;
        b=XTjQXd5y14VKUoIaHzMBC0IlnERKlmVudS3aWPwfRTYwFYrSVFhtPXqlujn8E76Iz6
         Eo/Kh7Yo8wNLHhV3Ec9T07jxhQZU2hfHu/ftTlDasFxRCeqxJW63i369LMcWW5tEHR7m
         7O820jS7/dvEb4K5FdApDf8PFMUUxVRlRD6aCbnfWbbatc3bYqc4C5PCOlmuNtjAKlB/
         n4c/oFZcCvgLbFLLgg7ovGqVAj+bnB9O9I1tyegoVOeLo6byeB+ruSFWgQ9thPoe/QDo
         BHX0c2rQG6m3x3D3rA5w8kd0+7ErykTTci12bQFOt0vUxP11o9MwDZD6X8YzEq9zp6dc
         WfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696599175; x=1697203975;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1UMSzCfGcOmd7x4iRnizH2gQfkoOfysUuwwepXF+kl4=;
        b=Gi2REq9qedNw+/hAN3NT6N3KthpqbtBID9DYWQmU1VrLCBh4s/1xDI8vfgTo7ip+oI
         VTgSmGF4eHjrbqcFkl+Raxq2QjIn3/+oDI6Zr6T9pSRMoXW57vb3O4gT9eBWHJqrqk3A
         yuT1KgToFw5vCEJ3q2UGeO9rV6AB48E8zVV8uGWfHDBDEq2B6UlF7An64PsseiROFABN
         YOYwbCUEhRjMKhXny5f0hpP2LtU/RUkYbhwUlEaX/JmgoTVopaOLylylLc9KYHh3bQfJ
         YR3kCD8Qj3mlQuH+gZQU1KfO7/6+cHkSzS69WUXzuv9pAASqapna9NpoMxvqy2bkHUyk
         CD9w==
X-Gm-Message-State: AOJu0YzikyWigjfjSqHae6CsJy+3TboKYj7vmLPN+sUA/vs3kRmgXvVj
	jQ9Yuh4j/7hDXm/+GJlUASafOZLZvS08LFl2Hj4lUWDa74bPmaEH6Yo=
X-Google-Smtp-Source: AGHT+IF5Y96uTpIafyKbea/bTY7oIzxrucw7tzo6OnHkosfn1nSxqC/VzXFKSR68bcnvFc9/45Nq9WW0EYZeNpJoCxI=
X-Received: by 2002:a5d:43c2:0:b0:321:5969:d465 with SMTP id
 v2-20020a5d43c2000000b003215969d465mr7477356wrr.65.1696599175126; Fri, 06 Oct
 2023 06:32:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Date: Fri, 6 Oct 2023 16:32:44 +0300
Message-ID: <CAOJCLCs2Qc1-rRttkGUTKJNQaUfoN9hA8H_5dnYJckkteRzMQg@mail.gmail.com>
Subject: Seeking assistance with the linux kernel installation
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,
I hope you are doing well, I'm currently following the steps outlined
in the article for setup directions, I have completed the first steps
up to the 'installing the kernel' section.
However when i run the provided command, i get an error of

  SYMLINK /lib/modules/6.6.0-rc1+/build
make[3]: *** No rule to make target 'modules.order', needed by
'/lib/modules/6.6.0-rc1+/modules.order'.  Stop.
make[2]: *** [Makefile:1821: modules_install] Error 2
make[1]: *** [/home/anita/git/kernels/staging/Makefile:359:
__build_one_by_one] Error 2
make: *** [Makefile:234: __sub-make] Error 2

Could you please provide guidance on how to resolve this issue? Thank
you in advance for your help.
