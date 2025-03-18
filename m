Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3949620FABA
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 16:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742314260; cv=none; b=hRAwMKOzjHtkuRNGmS+P3sm5VKMia0pkTjUKCWzo1EpNHeg2BCJ3ebe9yR5pEbHkki1c+2iIPx9AKvr1ZFBrxnxJWC4067PIAe2ripZ/aHyJhjaDLOCAMr91qusRB8tVmiYJjJJKt+nEM5HMzg3XEKsd6HPPYBwQw6n0Bk39vLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742314260; c=relaxed/simple;
	bh=rzUqbiKWT4aw2+OdP28r4zfXflpDCwCPJkEtTYsypV8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=fsmhQuUIU+uWg3b9b8u3u4fFSzwlmMNwbFLLGDDLGXEqCkkE5kil6xTsSOKp/BeDOUPkweuDDmwYv0/XqdkCLy6LEF0W+/eCUPjmMJoxKyU6aRw2UiHCi7AWpetlUZ7tovlxC6hbdO4FtN7zr7XvpWhCnKBa4OMO6gvmXD9eM7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EpBb/n47; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EpBb/n47"
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-72bb9725de1so1087432a34.2
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 09:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742314258; x=1742919058; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rzUqbiKWT4aw2+OdP28r4zfXflpDCwCPJkEtTYsypV8=;
        b=EpBb/n47723LEyEYQfgL1be6AjRhSEaP7pAfw+pwYvreTidt0jFiKEjuuMllCQ1Fjr
         4dq3GUuelK0anHMUO0a0bQR6mhRXNt4RUbGcBuq1nm6OTIP6eAsv7KMzx5Rf+y/1dqWG
         1sECZ5Mn9PU6PJ7cvwMILr7vbdcYJuroHVcHnQUYYEICR4it2cZySt+9+OB75lU8VL6X
         kwZoIHWlXPpteDNMbBDBhaB9tLxPklrWeuntomuGEn77VPZuwFzkSjTmbNptt3vmVDzV
         23apjy502R0NWTfm94UUwG4To7eqk7ymKDhuYhIMWahG5WNg+AYM2I4MQ0YdLHq3pQg8
         TSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742314258; x=1742919058;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rzUqbiKWT4aw2+OdP28r4zfXflpDCwCPJkEtTYsypV8=;
        b=m676ruLVyF6nxOJUeRoox9WmXKVPjJ91KFRvMGY5wqZhPkLz6XK/mU/MK/69m+6GPE
         e969RbTo1aHw/nCoWRDbCpZU2e5so9Z+4HWIE11rG9dalOz5XRQ4NlgjBaz3cOW0b/bd
         T6ws6fT8U6/WZiPhndgzPjZSryPGsziahJKtifyH91t1Mirgl4cfI9ZAg5l4TXaK3mje
         7xWtEA1EkoVOi0eonZRxXaGXhB5mIBTgCKPgEWsy78wU9KUOANQM1N356y0CC/9RcvF1
         7vWtJh7ME0MhdRwJDFCTbZsyhaEXlxD71U5Vm48k4mCO+L/Lm1VUd8b78zuV73wNn+WW
         o+DA==
X-Gm-Message-State: AOJu0YzEbcgreoQl+sTykJRsj2oSdEbkD2NF4WLIqAWq7bo9hGcLyLuW
	3SR+wnjM+VKUHkrZ+K3hJ5B+kBKuTZWTNpdZxlQsTrLCRFm5p7sdvwpfDfLGd8txcpvIv73BKRJ
	y6vDMqZdx+zVWD/kjQlBI+tEiMnQmfdyL
X-Gm-Gg: ASbGncur8iACTv9aC3w9voAmJG17qx5WxGorruy/fQzzF4B0gpp+X1mwKulvfFMl3b9
	pvb+qv6qmJyjNu5myzh7lcxHv9wv3UcIz34VZUhRbiEf67YHCL+eS+H3i42xuyhuRktaSCNmP71
	7+M9M4Cr+WQV84bCFQsmyvAW8Ubt8=
X-Google-Smtp-Source: AGHT+IGzmwAQsNNdresAbrfn9GEpASkbvsCnUeYF2ey6EMQ2rX9rkd7meBwcLULEUgWB44quoEz4mPCGUj+KjkMvXP8=
X-Received: by 2002:a05:6830:6784:b0:727:345d:3b83 with SMTP id
 46e09a7af769-72bbc5482d4mr10716225a34.23.1742314257583; Tue, 18 Mar 2025
 09:10:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: erick karanja <karanja99erick@gmail.com>
Date: Tue, 18 Mar 2025 19:10:46 +0300
X-Gm-Features: AQ5f1Jr_vI_8qPhUtOV5Nr9xSI22GlzWfhFx2ojteJ5ETUA-0HmS3Fq-p6d-aEk
Message-ID: <CAK=KnqQpAsaroFjQD9dd0ucWbojjDzAjBW4bTeaY3cKZ4a9oQQ@mail.gmail.com>
Subject: introduction
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello community, my name is Erick Karanja Muthama.I am currently
applying for outreachy internship and I would love to contribute to
your project.Thank you.
