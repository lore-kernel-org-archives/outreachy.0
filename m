Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBF77E
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 01:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EgBfNt3Q"
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-41cd6e1d4fbso21830531cf.1
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 18:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698109903; x=1698714703; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Y0enxq+0lqIoO2anJusa7gquU0yhUQSIKVIKX+Xv74=;
        b=EgBfNt3Q/upG/0Hyphip+sd7mxNVpaEhqdO33AHpNmBfoTbxZ9SJ3YZpLFZtsNa9tB
         zhHKA05ZvJe9j7xuyxHm7RpgKBJQTnZyP+9bOEMegZPN6XmKZpzRjC9gwSnHF6S9TAca
         LHdZFp8Seqzsyb0dkd0aAtH7Jvi/XuE4ivyoqQ7VCKL+2N9mzFK1nPfhNlCqtZp86ZBw
         XKDSbk+59VxfKO6e//1WBnJw2KX5CyCieF1QYgLMVddqxo8f+2G7SrAZQkxOz8Xk5YSi
         terpOBOjL6Gb4KnmKO9FPxd1M7ITpOeWFAkceKXow+YKjMs7V7n+3x8HJMeGDrBJhmK0
         btVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698109903; x=1698714703;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Y0enxq+0lqIoO2anJusa7gquU0yhUQSIKVIKX+Xv74=;
        b=eAKXvkKcjKz+IpuivNypv7F3D4k0h6WlymEN9K/mQB97XdUmnajnoe5yz2vlqskbxV
         TKQ77olPo9ERtxk7gZ4pv8IbUzlOMLSn79JClIYQh0pGAEb/lOZ8M/hxWA1YRBtARLp+
         bKYT+3E9OauQ8z2uPP5MwfRoK08oycvJ4oXy2BTDB/C7dvo7ujXwvMNcys5UntkX4vW1
         h+HmiK9UOT0RySPqAz0sAuDSZ5rj1qeP8nH/7QquzQtqzxZDTOrLORnIO1DKcCIBV7F+
         wzVjok8EXvZ43T0zhR6gF/OtLGhHo4m8dBVKFd43KuLOlGQNfg2Ptu4W6i7aSrbcj7w+
         KlmQ==
X-Gm-Message-State: AOJu0Yy1OamwOPQty0ZbnRNmqfGIldEFhievlvbCqCkyOBLufuNwMueB
	L6lQP3oSXTsjBJhiClPQAdE5PNXzwgCJQ+V82zriWTnwOQ4=
X-Google-Smtp-Source: AGHT+IE3Y//WF0Nj+t+AkXLr8Ghxmv1aw0JXDoVRVF0DCcpA14B5fIjIqUTOEACIRmRSu3Nrm/y1HqSE79Sl84B7c+8=
X-Received: by 2002:a05:622a:1a09:b0:417:fe9c:6d88 with SMTP id
 f9-20020a05622a1a0900b00417fe9c6d88mr10565374qtb.37.1698109902856; Mon, 23
 Oct 2023 18:11:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZTcXQXfnkEMYjnDk@host-62.home> <CAFLe_K3aDJJsun9A9k8x80tL9GMK6z9AivC1zTN3+eETUs9ziA@mail.gmail.com>
In-Reply-To: <CAFLe_K3aDJJsun9A9k8x80tL9GMK6z9AivC1zTN3+eETUs9ziA@mail.gmail.com>
From: Jeremiah John <jeremiahjohn08706@gmail.com>
Date: Mon, 23 Oct 2023 20:11:31 -0500
Message-ID: <CAFLe_K2poweHwHcCAhN2peFQ55bBxT-0gRfVoKH=oMD2derkpg@mail.gmail.com>
Subject: Re: drivers/staging/nvec/nvec.c "usleep_range" check
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

I also understand that I should just remove quoted text if it's not necessary :)
