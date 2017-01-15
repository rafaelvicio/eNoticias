<div th:if="${message}">
    <h2 th:text="${message}"/>
</div>

<div>
    <form method="POST" enctype="multipart/form-data" action="/upload">
        <input name="imagem" type="file"></form>
        <button type="submit">Upload</button>
    </form>
</div>