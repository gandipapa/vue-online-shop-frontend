<template>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th>制造商</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="manufacturer in manufacturers" :key="manufacturer._id"y></tr>
            </tbody>
        </table>
    </div>
</template>