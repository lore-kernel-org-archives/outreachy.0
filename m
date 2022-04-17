Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81A52567
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 17:27:37 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id d198so6720871qkc.12
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 10:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rr3MW4iWtvz4kyuuwKitdxfQCxG4qCjZb0icApFLxg4=;
        b=THMs90MzxxBy6ijxkRLlFaX2QsPDl4OAivvNtOFjG27VKrWGQ6larA6PqI2ZQSnG00
         usdkE4rb2MU8AlXRZhHbGSgMlpbhy05+hI6x33GBBRFqYsW8XzmyzWnhRtrFniKR88aF
         LU/DcoaTTK8MDoOJdAfDxvzpS5EoD0q0/XMlSwB4s6Ud15hzI3fE/kkYLelaHS07uEho
         vyuzTVPHUmqtDlrRoYBvgYJtFGfBk5eh4beRp6/g7BkVV67XjiinELP52hTyhvopa1RC
         trm4G7PwPYnQdfrrqpMl35pBR7aeOyMOkkglIheRa2DKXJT5VjFhRAHsgNgqOfcDYkoq
         lHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rr3MW4iWtvz4kyuuwKitdxfQCxG4qCjZb0icApFLxg4=;
        b=5azETysAnip5GWKSPcPvKUXaZl+vfIF85KBMQML4J+6TRXYMTFG91yjVnlKSrqSsUc
         mVGicBrdWAdRucOU6pYAR5JQpw7N1kBBE9/HfDunlgFRSx8pEb7fmJHW9xKJUvrcY8kQ
         ONNVRSUOlhebCPtFGqFsA79HCACcSmGOloyhwVkHBp3XoEjRKJZEz17tdR1crSgAdfAz
         1HzTbY5MpbXHwp6mC5mpPJ1Rl9R3W55qpFhH5eAMIVBKa7/BYls586bHiduJGOH0iG+k
         X6RKCjAHWVoWK+IM4PmQ3PxG8VtsFQuUF5PNaGIHIdDcR1+qUYo741pcg2iQLIJD6+2l
         mpnw==
X-Gm-Message-State: AOAM532mFVO6EDvSiMxZhzvi7FYhNaMDBe6f+cxZe9CVWAbEnvknOwl4
	QfiPHLGZwjcUNLYgNkl/9Pc=
X-Google-Smtp-Source: ABdhPJy8F6dB9iXqVdTVDdfqKvCgzJdqMUSlrG2xbf0wS4Lc0cozY/yO87+Fm2P1UysXz3zMjg1IOQ==
X-Received: by 2002:a05:620a:190a:b0:69c:3ee7:7c8d with SMTP id bj10-20020a05620a190a00b0069c3ee77c8dmr4586936qkb.743.1650216456650;
        Sun, 17 Apr 2022 10:27:36 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id c136-20020a379a8e000000b0069e5df9d953sm3391441qke.34.2022.04.17.10.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 10:27:36 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Subject: [PATCH 1/4] mbuto: fix the help error message
Date: Sun, 17 Apr 2022 13:27:18 -0400
Message-Id: <56039892d7ba74fb8a294b589d5fd941dfac04ff.1650216230.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
References: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The examples in the help error message still show -c and -t suboptions when
choosing specific kselftest collections and tests. Capitalize them to match the
actual suboptions.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mbuto b/mbuto
index 3a66a6e..4565a19 100755
--- a/mbuto
+++ b/mbuto
@@ -1106,9 +1106,9 @@ usage() {
 	echo "			-T collection:test"
 	echo "				select a specific test to run"
 	echo "		Examples:"
-	echo "			-p kselftests -c net"
+	echo "			-p kselftests -C net"
 	echo "				run all the tests in net collection"
-	echo "			-p kselftests -t net:ip_defrag.sh"
+	echo "			-p kselftests -T net:ip_defrag.sh"
 	echo "				run ip_defrag.sh from net collection"
 	echo "	-s SCRIPT|-"
 	echo "		fix-up script to run before init, '-' for none"
-- 
2.25.1

