Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792429379;
	b=uA/kDWZYcDcti/wkuwCQ6YiPNDf2oEp2tpgXOmgxFsdJWk41MRmbW+bo56sHoivMRn7g
	 YlW6dutI03jTGS5fmGLBtE33ryORIl/zpjIz1vZEtnf+LVQyiixQA8spUmf6Wv8Tmgd5K
	 oJDnod4voeOSvYGvxejttC86WfCjkfaCoPoC//tDBS/3AbWO0HoDqObVRrOdoU6Vxg4Xa
	 Wgxbvqh5iDTwu36NGMPfMpb8l6RPv2W6av53QYJmlFfXqrDJ2NbA7tvodvVhVv8cMj4FA
	 5Rbd6qywl8WesMBBgQyvVgTQ3H4LMfVahSrG7bbH5DKXoQbBRujOV837U/c5aF7aFog==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792429379;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition;
	bh=t+rudXItXEK4LNmytAT27zswld1ia96eWlp9vIioMtI=;
	b=Vq04gEoQ+XiQWLcAbEopD5xKThOVxe/WYNtpRXzTMS+S0MU9RXFItIYTXMORekZ7NDsa
	 aqCAzxTKTAKgqSUPSK/H5MI2irh+Je+qbi0GCT75x/JOkQ4fwxTTR7Hm8UDXEt1e2RWAl
	 OJHY/nqmGDxETZibIK+NeKJBJuTL5X8rS3HNNReT/ZkYsEJvuWjiOQW4ZIeNrdjXwr1qp
	 RYmyTRq/TZkWjKxBy+xgUerCJbDbQhOpqUWGaN7wx4DivAYTqj2/Z+R4CxZg6/brHd1oV
	 oVNw5ouG27mCCsYtNdcYduJVJlRhaG10Haivcb7UZ3pUVlrdw9s1L5i/1lWGhNp4hXg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Imue+Hc+;
	arc=none smtp.remote-ip=74.125.82.44
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5E7606A33B
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 17:02:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3F5E7606A33B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Imue+Hc+
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-14394530ec6so1228495c88.1
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 10:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792429378; x=1793034178; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=t+rudXItXEK4LNmytAT27zswld1ia96eWlp9vIioMtI=;
        b=Imue+Hc+wSPh6QcMduXu2u6Dp+VLstkBJRrYnw9GUIGkw0JhcngkNYlQvK2R4nk0YM
         m8ggZcR/w2QeWaMet7LIWY+NItUqy+3hQpJ1/Pl44Bsil76kqiUar7Q7Mf4cPuVg1d/c
         zPnlWBAt194kR0IhPLgRA9+VxPSO3wMzb7R6kjcnmRC4wDwZSrTGAg6lyxoSlgFTrN5R
         ojFym+SIbYF4skC0gla0+o44x0b0HnyG8lLDJkXmcY25qntFbSbSFnJdnzscXc4xx/Ua
         Km4xGppEJFuCc9Rzkkans0OjgzSf3ZDJNzTsL57JzCCDL+4h9hI2ZOFPpATI7IQMhY9G
         Hr2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792429378; x=1793034178;
        h=content-disposition:content-type:mime-version:message-id:subject:to
         :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t+rudXItXEK4LNmytAT27zswld1ia96eWlp9vIioMtI=;
        b=xHYAzI5xXQ1WxuorKhzfIhtAYKmqgQYvqoYcPt/BokOmEpUudQdQg3VzCZeCegQUaz
         X7SotdvmJQu0dWHcURkxeVBMDlyMqWyyEsakGQ0FCqMNvXTLVcOsrufJbKQVnSU1d5n7
         yPmRE42iLh4RALAGo3eNlXgJFXdkgR6rTuKQvVLEdBJa1D66Nr3kYJvgPP1FH/YSE4wy
         6EEriPvQ3c3EkkqfC0PvMDNYjFh1dfJj1CxTFrqqHHj74kObpRLbQUlNh4OcsIsAjFw+
         cwm0DAQ0vLTSPur0veqIsClVR0Qc93W6X+eQZQlGUIryxwJaHrrIDqxF5gzzX6o448Os
         dhSQ==
X-Gm-Message-State: AFq9FYKeaeaNdRtNp/64x7kk+m+NY5FRY4DHn+MVeDh95XtGqV94HGJG
	NjldAt/V0/RT772p7AZUa9gljTTUJi3StJDrrjZYVSfTz/NGfXz1qKbWwkHD2KsB
X-Gm-Gg: AYBFou1fxOoMZya3FHBZ28KC3T6E0krs2eRxHa1h2uhyyrbiH6xkmcjY/9844l8QMzY
	JBvCh8LVuVVv9tXi5AKZ7CV45MP2EihN9KGude05ewZ314O2cGwGAO/aywSOc/V5n8wSLbJOjaO
	A6PUrInauffbG6x1UWSSt/G5s2tUV234Cx+LZrqQAejpqyTDf5+Ge8+7WUWS9B32+9Sp9IDHIQp
	mleVhBIPAy83Ew+9dXeX+izxF6u7yOYnPYonvcP4RP3+mTA2U5qTZB4uY4iXSRNgK30FV8d4egu
	H85PH5/8X5aurLSknnoPR1iuAwWL3j8jUAkBCIGg4+XYiY/epivjiUuLvDDN8zkf2JVYriQr+RG
	n+quS9tK2wpeskQU0Y6ZAvRGfc/FL/vn7KTJLt9HzOO+iCIpcPGzZ5JRxGlRYhKj+WFb5cQAiyr
	UpZPGAaJv0024GLpFrB7QL/2VwFmrt7QUTC2bGUa2TNMGeSuSMsfnPNC5mi4jTmDq4h8GYA5dR3
	HU=
X-Received: by 2002:a05:7023:a4c:b0:144:fdf0:9d91 with SMTP id a92af1059eb24-1851285de14mr11186108c88.24.1792429378187;
        Mon, 19 Oct 2026 10:02:58 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:4a5b:6025:cba1:1cd6])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831a6f5a13sm35783328c88.12.2026.10.19.10.02.56
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 10:02:57 -0700 (PDT)
Date: Mon, 19 Oct 2026 22:32:44 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: outreachy@lists.linux.dev
Subject: Patch Submissions During the Merge Window
Message-ID: <atZNNOiZIhzLf2f8@user>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

staging-next is currently closed due to the merge window.

should we continue submitting patches to mailing list for review
during this period, or wait until it reopens?

As the Outreachy contribution period ends on November 9, the time is
quite limited. I wanted to check how we should proceed.

Thanks,
Pavan
