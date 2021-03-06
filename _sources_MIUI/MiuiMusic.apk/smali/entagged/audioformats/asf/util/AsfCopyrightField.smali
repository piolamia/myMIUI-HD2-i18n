.class public final Lentagged/audioformats/asf/util/AsfCopyrightField;
.super Ljava/lang/Object;
.source "AsfCopyrightField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# static fields
.field public static final FIELD_ID:Ljava/lang/String; = "SPECIAL/WM/COPYRIGHT"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-void
.end method

.method public static getCopyright(Lentagged/audioformats/Tag;)Lentagged/audioformats/generic/TagTextField;
    .locals 5
    .parameter "tag"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, result:Lentagged/audioformats/generic/TagTextField;
    const-string v4, "SPECIAL/WM/COPYRIGHT"

    invoke-interface {p0, v4}, Lentagged/audioformats/Tag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, list:Ljava/util/List;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 157
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagField;

    .line 158
    .local v1, field:Lentagged/audioformats/generic/TagField;
    instance-of v4, v1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v4, :cond_0

    .line 159
    move-object v0, v1

    check-cast v0, Lentagged/audioformats/generic/TagTextField;

    move-object v3, v0

    .line 162
    .end local v1           #field:Lentagged/audioformats/generic/TagField;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 177
    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    .end local p1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    .line 180
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "SPECIAL/WM/COPYRIGHT"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No conversion supported. Copyright is a String"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/util/AsfCopyrightField;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 273
    const-string v1, "Conversion Exception occured."

    iput-object v1, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 283
    if-eqz p1, :cond_0

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The encoding of Asf tags cannot be changed.(specified to be UTF-16LE)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 305
    iput-object p1, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-static {v0}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPECIAL/WM/COPYRIGHT:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/util/AsfCopyrightField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
