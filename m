Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BC8286BD
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 14:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KzG1CmYg"
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1dceb2b8823so1582875fac.1
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 07:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687780; x=1697292580; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=am+tqyIhgWAkXEAMK4bfMW0SF17rmO2daex0Dm9txjI=;
        b=KzG1CmYgWAVHRFl0hKizJiZsGyjrkmCZIioZ4OnTYXKAGJlXtwS+B/Gj0Dckkr7UmT
         LpoM4f0x7vlp6JrprJPe2oKC20AhcFAU5ttqz0XOx7qClzd+WNd35LsZqVUsVepmUh+x
         2J9MrsnqkOr2hhYsie18VZqyvyjyL5fPRqyECGAIXLGKEv2z/gC6hQbvE0b1jNY8D6TZ
         DdE5na+PBM+fSgDhwhTHvnyxf8zaARjo1u0nHQyClItIGF0SOrMI9PWVmd/MJJ1QIRL6
         qclmUhdUtq9aFn2tOz1VofgLUcm976TefNJWGyS7kmo7SJXbqXuc9+7O47JGz4o5X/sN
         PyLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687780; x=1697292580;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=am+tqyIhgWAkXEAMK4bfMW0SF17rmO2daex0Dm9txjI=;
        b=Y287ehEU+b/q7jTiC5rxYABCrMnVGvi0JD8D41OA08IXlJa8vPQCtuDmrflJ/X7WzU
         5DavLUpQIj4uxC9tDOmRuENrKCodjekcocyM1grhG7q970Rev29zpwF4cYlrZrQoCBuV
         7xXlHDTyphS6G3aiv4wk3qK3Evn1z6338J4yDloaL2qhr1+nQTLppZTQsbUTJmV7vUM1
         Tdi6uyUXZlIQsYoMEnMGkITUDvd5wMsyS83cW3XokeWYm9QelA//bELbglw5NTXejtan
         aA3D1RVrabU79I55fqN7jMQqdNB0BcdaO1H17I0jlqWo4TAefBsumHv7oUK82o0oXUMS
         7Q3g==
X-Gm-Message-State: AOJu0YzPDCimtj0ZS7l7WAT5YuuXMNHe4q4YHMWWJodFd1mqU336nV/G
	u64edMYHFnIUGdKIowSyxPO++m4CNf45rWMhSvUkUE0jLcpUxAcy
X-Google-Smtp-Source: AGHT+IFcYQ1dlXeZD6hfU0g7du5BWtHwOnECsDWx6Hd9nGC0bLTlMaHRWe/fGSTxZrAmh+CiZBd5b3lq8OvxXgDtaUk=
X-Received: by 2002:a05:6870:40cc:b0:1c8:c22d:1130 with SMTP id
 l12-20020a05687040cc00b001c8c22d1130mr4792141oal.21.1696687780542; Sat, 07
 Oct 2023 07:09:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: K <maduechesik@gmail.com>
Date: Sat, 7 Oct 2023 15:09:28 +0100
Message-ID: <CAAFs_TEQQCq46Pv_3e=9ATLqihzJ3tMW4hiOfuP5GGYXQ_TXjw@mail.gmail.com>
Subject: Unable send test message using mutt
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

I have followed the instruction from the tutorial, but whenever I send
message to my email, I see this, "SMTP server problem Network is
unreachable
Error sending message, child exited 69 (Service unavailable.).
Could not send the message.". Please I need help. And also, can i
shutdown my VMware when i am not using it without loosing my data?.
