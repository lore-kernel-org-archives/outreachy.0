Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EE2482CA
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 17:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711991622; cv=none; b=UcAkHhB/Zp7kwGTbLDukShYq5LjWPacnoRm69LeJ61D3J1IPtC4SrZAop+si0ZgzJcVFzdEomMsBPBjuZHq0rt5R82nWOE9rQLqkJW8RSR/ldJLlz4Gqm0SEqNQwZpJX7kIj7vffH0RAzDRNonHgHdJvST73Je5LrgG/aZBBtSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711991622; c=relaxed/simple;
	bh=RKf2CU7T7iYbErOHrJnbYXj1gxGlmHqCvGySnUNhymg=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=o8uBvQ3RM+GPFSfU21VU7HpObcbW2vctWH6WO9dtqYl1CBEydzC9EouFEHX4zLjYZdaJ31OeWTwxgm//qT/+ZQtlxzAkoroq84zrHoVypxlIyX10M8JfbShijMmDg/tfbKMWcAXOHRRqyxX3O4pjeI3K9pdFLYecz9veBMtE6mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=khqCMaTX; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="khqCMaTX"
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516afb04ec7so509207e87.2
        for <outreachy@lists.linux.dev>; Mon, 01 Apr 2024 10:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711991618; x=1712596418; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QrG4F7sc9gxkc41ac7lzB9mBire+5fEJv0wz/u+GGUI=;
        b=khqCMaTXtfDqjzIxy3Tu9Z2fnuVxatTTEXRgGAxeWvUAkSBn3SQ02VuTq1DWAeGzGZ
         kP+QrYc0VX7V+6wPQwwWaVLSuR08P8CfwSGcV4/dwT4U8bs30/+q1u/vHy4C0acrdJbL
         h44xYyr5HuIzFVykgf5O33CBsok53EzzjjvJeQZpf2nTsqwfpULIcSJ5MBjX+UBQtCq3
         sa5K+DJ/UE3bORKSE+sgOhDWv6ymJXkwpWUpL4lc7goy7InKqHQmRag0R0h6ZKodvntP
         nRpZkuhHBJcmLN5cwM5JvMoUgZddJVm0eW0KMSSoAYqu4qrusQSPDtCI/AkmIYj+ovvq
         QPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711991618; x=1712596418;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QrG4F7sc9gxkc41ac7lzB9mBire+5fEJv0wz/u+GGUI=;
        b=G3poCzgdrRgvp5Qi6JCjK4/EkeLneR6m3WvuvNbsxi5TX7+DGPmdw72PBy/9/WLCCn
         v2Gdej1+8i8EPaR6zWhg9tgG/B/KRlvh7dV4L6grC18nNoBfaarCjM2hXbEbujOjKaJ1
         W/BYFL5GqZwEN3GOvIxLxqzBaiPnzXN/x/biruvbP3Pwj4DMyTOSIZflgyoPlpBsE33d
         4xSAdyVc5MkEwuGsFagzIzx5qN5WfHYEJNwB8caGw/zpbIA3b9IXCwmkn0TAeVbIZLsC
         W8sAYpTbZLqQwmtx0XCM6bqO3ymEQCjYW9E2tc212EAwfbZHpjMJgYthTLKzUAVfGwHB
         JGPg==
X-Gm-Message-State: AOJu0YzffA/c/5A0omhKIrrTyG5GEMAv2lkPbF6gqaFuNPsIHKTcT6BR
	ucve0/iLZHOe8vxKGeC1J2l0xHbPRqma9NGHf8D1+YWBxqLqWxaufdDjXD5QzurGxZTF1l4ZuVQ
	eHntJV0K1wNmtRkFG78CutFYOb4Qw0drsc+coLeeSJQy+9g==
X-Google-Smtp-Source: AGHT+IG+JP9lWtC9TUgU5bQ4uzfMKkDZnxtlVBhVL+9I5Rll5krcDHjjuxxYSPq5MIFqhNZBCENx0qX7bgNYwhuVCrk=
X-Received: by 2002:a05:6512:6d:b0:513:ca65:8c58 with SMTP id
 i13-20020a056512006d00b00513ca658c58mr7657475lfo.43.1711991618014; Mon, 01
 Apr 2024 10:13:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Saasha Gupta <saashaa1122@gmail.com>
Date: Mon, 1 Apr 2024 22:43:53 +0530
Message-ID: <CAN=P6FPod=+6zTPKy03oxCVYXzgcnnr6AFpwjZp8qap4bxod8w@mail.gmail.com>
Subject: unable to submit patch with git send email
To: outreachy@lists.linux.dev
Cc: alison.schofield@intel.com, Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"

Dear maintainers of the outreachy team,

I am trying to submit a patch using `git send-email --to
outreachy@lists.linux.dev` with a few other emails cc'd.

My SSL version is: 2.085

When I am send the mail, I get the following error:
> DEBUG: .../IO/Socket/SSL.pm:851: local error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> DEBUG: .../IO/Socket/SSL.pm:854: fatal SSL error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number

I am on Arch Linux, and I have installed the correct version with:
cpan Authen::SASL, and installed the correct perl package:
perl-io-socket-ssl 2.085-1

My .gitconfig looks like this:
[sendemail]
    smtpencryption = ssl
    smtpserver = smtp.gmail.com
    smtpuser = saashaa1122@gmail.com
    smtpserverport = 587
    confirm = auto
    supresscc = self

[user]
    name = Saasha Gupta
    email = saashaa1122@gmail.com
[core]
    editor = vim
    compression = 0

I am not exactly sure why this issue is popping up, as all the
required dependencies are installed. Can you please point me to where
I might be going wrong?

PS: Regarding the previous mail, I have solved all the problems, and
created a patch.

Thanks, Saasha
