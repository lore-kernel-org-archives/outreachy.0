Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75CF7B
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 10:23:25 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id p1so5678447qtq.10
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 03:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=5anLCU1hgz9xnTwkWucIBexZ7YBsZkD7mlEDF6g7Q0Y=;
        b=BwTd9aXXz8uNsBn6tU7BxwVOJUDx/2gHl0WRxXBWdSA1qmc7itqhd3nW+1QeDEe9X0
         YaQ3lBwsm+UponSKE57BAa/6Wzt4DbPa6Jj2bUnn6Vup2CB0ub2qgNuK8Niq0ENJiUg7
         MpCy4dUaSpz/v+n23Gln5ZqmfHnX0q2PHh/z/7LrN67eoZLfWqi46lslFwB68+dqh4+0
         NhJJkgmEM/XnInhELIsJeVnkKUUprhtoctnWYu8oJKWGpimw12hClNeog0jj2Jx/Nbc7
         ughPe++nwALmTfstBoDSZrCY0amGr3YfdyhvLCx/AbdsIkTE9BQdcyGtPFEdikFm4PnG
         Jmng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=5anLCU1hgz9xnTwkWucIBexZ7YBsZkD7mlEDF6g7Q0Y=;
        b=6MWJNrIX5yfaRA45LJWk5QF+xB9TuoLC7HBLvf3OIvLHaA0NKktJVN4kXetx1fL+Qp
         hpmMekj0f6Uf9Wqvb9vuSSOLt/rD8UtaabXO06tq2ID6Mb92L+i30EoFXHwET1A1rkMf
         zSBSjwaU4yCZ2QQBH/ZkGolFWhPj3JW0WS+XR0GLyqCEQR7VxkUlyonq8SHu1Z+cQApU
         b6SYWgus59c0ORrE4MF3Sc54Yg9NC6w3Mrb2QaoIF4lNLeEXuo6R8tpctmVNxxkj95eP
         NaVoJgvgzNIdrAmlDE4iN8hyYM+eRCH/piHW0yN/z5cLylLQf+P73oizsUtycl2cMWNi
         bcCg==
X-Gm-Message-State: AOAM530WeslNd8OPpvDh62LcLq7OS+w8ZxSi63+NgX++P/WCqtiDTh3k
	80HcDjQysIFYDcYo3ys/ROF6m1LQCnlCtg==
X-Google-Smtp-Source: ABdhPJyVT9/XViexf1dU7x28n30HpOIUgcbGJOblwLUWlBtxYJ26NRolJ0TrUg01EsIel4518qMLxg==
X-Received: by 2002:a05:622a:120b:b0:2e0:6878:cea with SMTP id y11-20020a05622a120b00b002e068780ceamr4755633qtx.547.1650018204409;
        Fri, 15 Apr 2022 03:23:24 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id 16-20020a370c10000000b0069c00772054sm2315628qkm.114.2022.04.15.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 03:23:23 -0700 (PDT)
Date: Fri, 15 Apr 2022 06:23:17 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: add a function to join elements of a list into a
 string
Message-ID: <20220415102317.GA882489@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In multiple places we loop over a list by joining its elements with a prefix,
suffix, and a delimiter into a single string. Add a function for this
functionality and replace these loops with a function.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 36 +++++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/mbuto b/mbuto
index 14176c3..c1695fb 100755
--- a/mbuto
+++ b/mbuto
@@ -223,21 +223,11 @@ profile_kselftests() {
 	if [ -f ${__cfg} ]; then
 		__mods=$(${AWK} -F'=' '/=m/ {print $1}' ${__cfg} | ${SORT} -u)
 
-		__egrep_pattern=""
-		for __c in ${__mods}; do
-	    		__egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
-		done
-		__egrep_pattern=${__egrep_pattern%|}
-
-		__kmods_needed=
-		__find_pattern=
-		for __mo in $(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
-				${AWK} -F'+=' '/+=/ {print $2}'); do
-			__m=$(${BASENAME} -s .o ${__mo})
-			__find_pattern="-name ${__m}.ko -o ${__find_pattern}"
-			__kmods_needed="${__m} ${__kmods_needed}"
-		done
-		__find_pattern=${__find_pattern%-o }
+		__egrep_pattern=$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')
+		__egrep_result=$(${BASENAME} -a -s .o \
+				$(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
+  				${AWK} -F'+=' '/+=/ {print $2}'))
+		__find_pattern=$(list_join "${__egrep_result}" '-name ' '.ko ' '-o ')
 
 		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
 
@@ -245,6 +235,7 @@ profile_kselftests() {
 
 		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
 
+		__kmods_needed=$(list_join "${__egrep_result}" '' '' ' ')
 		__kmods_missing=$(list_diff "${__kmods_needed}" "${KMODS}")
 
 		if [ ! -z "${__kmods_missing}" ]; then
@@ -435,6 +426,21 @@ list_diff() {
 	printf '%s' "${__diff}"
 }
 
+# list_join() - Given a list of tokens $1, prepend prefix $2 and append suffix
+# $3 to each token and join them with a delimiter $3 into a single string
+# $1: list
+# $2: prefix
+# $3: suffix
+# $4: delimiter
+list_join() {
+	__s=
+	for __t in ${1}; do
+		__s="${2}${__t}${3}${4}${__s}"
+	done
+	__s=${__s%${4}}
+	printf '%s' "${__s}"
+}
+
 ################################################################################
 
 
-- 
2.25.1

