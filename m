Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4A4334C39
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 16:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791821683; cv=none; b=EIf7pvn8GsuKX6HGE68t5qRfeMM5B1AB11AfmP+T9kbaubaY9nc6SJe4MHH/KobdOrAEGMDBVzIrvK2raMAH7DxIOh2NlCnbIumHs+h0YXvbvHhy10GBk8vM8KHRFJGQr81oFMJocbmu+Z8S2bl76NvuR7aptBCNWpvnJvbLVt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791821683; c=relaxed/simple;
	bh=gR4IshrcV+CamRqK2s0sgqb+8aoXOAiroaSM/ojewb4=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GKGjceM5tShgi0ekACSR7ltj7xBofbUQsXBRFuQqTfGku+ycnRt7gCtvb6GgVfmOzZh7FmHe12Hc6nLkyCqh7khYj8gofLyiole7KVfC4pgfsASPrbDN5htVUsZ9FnhYhBT7ifc/OvxSs3SSPqghUWIOP2BLdS1YypLkOSjIzYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etrwhyxD; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etrwhyxD"
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1517bda04a0so974765c88.0
        for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 09:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791821681; x=1792426481; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gR4IshrcV+CamRqK2s0sgqb+8aoXOAiroaSM/ojewb4=;
        b=etrwhyxDvvVTOPFNOQ7Fyhzz/yOD13SO6BSvcSdN351STN1PXhitDujyJiMQupRabv
         +hcDNR8hTbQ3aNI39ryfgs5lVocNQGzFir8HUR1cHJWEypx4vaI8vbNNW5ldPu2gDqcC
         4TdeWgo12yhUJFsbJp+CVNRYMOhvbxzeA1rWQBcI3sFHUbG5WbZF5hgSKMzOXee/sVQy
         uoh1I6SHajgabDbcUZok1qfQA6I+ydbCvqhmfsfm2Mbnxfj6F0PFMxTZvUqq3E/88Ziz
         FDGBSFAtejHd+qktzfbpF0sayPWW5y/TpSilMJzuhctxnDlgaHIC5VX0soj3ElFf1VHN
         x3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791821681; x=1792426481;
        h=content-disposition:content-type:mime-version:message-id:subject:to
         :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gR4IshrcV+CamRqK2s0sgqb+8aoXOAiroaSM/ojewb4=;
        b=0B0N9WHH+xIfhjdGJbARTeK2k31gHMVeHpDY8i7HGpF1XHBB/6o8B/ZTxg8nMNFa1q
         YoiET82IjefzG84SF2K7ZF2n6NCoejdcmdHmM8uop019A0K9kQ2sxyskdzPRp/cCHOhj
         RZoW5F6lNSAt1sdfu16yonqzR7v5YPmPl5WZ9eX39w1evvfv6t+rRBx0hktXHc4897ay
         kyYjp+U/Z3c2DwqybbnOqR6WvSRk7VFLSicE6R99elps3EewK8YsFzNvKBzVkCte1Kfb
         PRx5ksPYQjaLXim0qMyYJtiutx6iLjr5qvvypahGBHq3zZfLOhMzkjdHAEwvjdHUzR2t
         SZcw==
X-Gm-Message-State: AFq9FYJEKTMGw6zQvVZV7aHmasmNntwBvTuOrDFgJ699LuUPtxero9U2
	i/5uGOCAI8FlMsv5xsLRP4inE6Ftk3J8MKk6ME/0Eg9AQS5mMiSfM+8znhmn2FZM
X-Gm-Gg: AYBFou35Ebn+Ao89V6chnPI6F/13h56UjsxmQ8k6gAMOzvw3Tsg+G7SQx91lm9JyXkH
	MosyKqvR96vOfSH1YQGsNnKboS/+9RhuJowkAGlWg7kRGnS+dOlA+bCaBDlJk6G6OaIPyjMuU/w
	pJCzTlxJCNzdpbCn59vD72UbsJkESkcSPQV3LI7rv5p1I09XIFL8neLYC8DvB7RPzR4zruIrsD5
	QPCd9+PUOpFQZIeAQZVj/542Wqnwu+umTtqSeGwMSACTWs7Kx6I1t4q/8XJKDkx2qUsMnpUoQfA
	uSG3SZu5nqREz1f2NIJ43Bpabp/+GXd4P4OzW+z72JkHdoa+s9z7S5j2BxzSHTqGOpVJViSJPVA
	dYX96/m1+6gsOdZIInQwHtPS6unc6av/EnQNdOrazTaXAU6MogO4mJV83zHIOpZ60hY+uY8s8/6
	r0srFzHiMywY1keHqsUQ7akH4jHljrMADiYzALrfyLrSXY4GwHt0LIVAYO9A+T0xxSFtBkO+zpc
	0Z04kbRxbjNpw==
X-Received: by 2002:a05:7022:e884:b0:14f:b80a:33a5 with SMTP id a92af1059eb24-16a5d35f1cdmr20627557c88.28.1791821681405;
        Mon, 12 Oct 2026 09:14:41 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:c154:b925:c82b:b0a0])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a3f6186fsm32461804c88.14.2026.10.12.09.14.39
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 09:14:40 -0700 (PDT)
Date: Mon, 12 Oct 2026 21:44:11 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: outreachy@lists.linux.dev
Subject: Introduction - Outreachy Applicant
Message-ID: <as0HUy5rtCKSJF7v@user>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Everyone!

I'm Pavan, a CSE graduate. I've been selected for the Initial application stage
of Outreachy.

I'm excited to participate in the Outreachy contribution period, learn from
mentors and other contributors, and improve my Linux Kernel skills along the way.

Looking forward to learning and contributing!

Thank you!
